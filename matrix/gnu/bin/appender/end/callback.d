module matrix.gnu.bin.appender.end.callback;

// logic specific to the end of the function call
import std.string;
import std.array;
import std.digest;
import std.file;

// function specific to the end of the function call
interface MyCallback
{
    struct MyEvent
    {
        void call(string callback, string event, string appender)(callback, event, appender) {
            return callback + " " + event + " " + appender;
        }
    }    
}