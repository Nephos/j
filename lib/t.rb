require 'etc'

class T
  def initialize
    userHome = Etc.getpwuid.dir
    @tFilePath = userHome << '/' << ".t.list"
    
  end

  def addTask(task)
    taskRecord = createTask task
    writeTaskToFile taskRecord
  end

  def listTasks
    readTasks
    if @tasks.count > 0
      @tasks.each do |task|
        record = "(" << task[:key].reverse[0..2].reverse << ") " << task[:status] << " " << task[:title]
        puts record
      end
    else
      puts "No tasks"
    end
  end

  def clearList
    if File.exists?(@tFilePath)
      File.delete(@tFilePath)
    end
    puts "Cleared list"
  end
  
  private

  def tFile(mode="r+")
    if File.exists?(@tFilePath)
      File.open(@tFilePath, mode)
    else
      File.new(@tFilePath, "w+")
    end
  end
  
  def createTask(task)
    key = rand(32**4).to_s
    taskRecord = key << " " << "TODO" << " " << task
    return taskRecord
  end

  def writeTaskToFile(taskRecord)
    f = tFile "a+"
    f << taskRecord << "\n"
  end

  def readTasks
    @tasks = []
    # REcord Pattern: <Hash> <Space> <Status:TODO/DONE> <space> <task>
    taskRecordPattern = /(?<key>\w+)\s(?<status>\w+)\s(?<title>[\w\s]+)/
    tFile.readlines.each do |l|
      next if l.length<2
      match = taskRecordPattern.match l
      task = {
        :key=> match[:key],
        :status=> match[:status],
        :title=> match[:title]
      }
      @tasks.push task
    end
  end

end
