enum LogLevel {
  None,
  Info,
  Debug,
  Warning,
  Error,
  FunctionalMessage,
  FunctionalError,
}

abstract class IHandler {
  // Method for handling request
  void handle(LogLevel logLevel, String request);
}

// Optional class where the boilerplate code common to all handlers sits
abstract class BaseHandler implements IHandler {
  Set<LogLevel> levels;
  BaseHandler? _next;

  BaseHandler(this.levels);

  bool get universal => levels.containsAll(LogLevel.values);
  void set next(BaseHandler nextLogger) => _next = nextLogger;

  void addLevel(LogLevel level) => levels.add(level);

  void handle(LogLevel level, String msg) {
    if (levels.contains(level) || universal) {
      write_message(msg);
    }
    _next?.handle(level, msg);
  }

  void write_message(String msg);
}

class ConsoleLogger extends BaseHandler {
  ConsoleLogger(Set<LogLevel> levels) : super(levels);
  void write_message(String msg) => print("[Console]: $msg");
}

class EmailLogger extends BaseHandler {
  EmailLogger(Set<LogLevel> levels) : super(levels);
  void write_message(String msg) => print("[Email]: $msg");
}

class FileLogger extends BaseHandler {
  FileLogger(Set<LogLevel> levels) : super(levels);
  void write_message(String msg) => print("[File]: $msg");
}

void main() {
  var logger = ConsoleLogger(Set.from(LogLevel.values));
  var eLog = EmailLogger(
      Set.from([LogLevel.FunctionalMessage, LogLevel.FunctionalError]));
  var fLog = FileLogger(Set.from([LogLevel.Warning, LogLevel.Error]));

  logger.next = eLog;
  eLog.next = fLog;

  logger.handle(LogLevel.Debug, "Some amazingly helpful debug message");
  logger.handle(LogLevel.Info, "Pretty important information");

  logger.handle(LogLevel.Warning, "This is a warning!");
  logger.handle(LogLevel.Error, "AHHHHHHHHH!");

  logger.handle(LogLevel.FunctionalError, "This is not a show stopper");
  logger.handle(LogLevel.FunctionalMessage, "This is basically just info");

  /*
    [Console]: Some amazingly helpful debug message
    [Console]: Pretty important information
    [Console]: This is a warning!
    [File]: This is a warning!
    [Console]: AHHHHHHHHH!
    [File]: AHHHHHHHHH!
    [Console]: This is not a show stopper
    [Email]: This is not a show stopper
    [Console]: This is basically just info
    [Email]: This is basically just info
  */
}
