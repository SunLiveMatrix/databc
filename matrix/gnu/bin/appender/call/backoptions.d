module matrix.gnu.bin.appender.call.backoptions;

// --------------------------------------------------------------- 

// call options for the appender that will be passed to the function that will be called
// when the appender is called.
import std.array;
import std.string;
import std.digest;
import std.file;


// ---------------------------------------------------------------

// set the appender to be called when the appender is called
interface MySetAppender
{
   struct MyCallbacks
   {
      void allowed(const char *names, const char values, const char objects)(names, values, objects) {
          // check if the names and values are valid and return the objects
          return Appender.clear(names, values, objects);
      }
   }    
}

// different names and values are not allowed in the appender
interface MyValues : MySetAppender
{
    struct MyAppnder
    {
        void add(MyAppnder myAppender) (MyValues values) {
            return myAppender.add(myAppender);
        }
    }
}
