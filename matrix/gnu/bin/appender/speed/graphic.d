module matrix.gnu.bin.appender.speed.graphic;

// available options for the graphics engine
import std.array;
import std.string;
import std.digest;
import std.file;

// required options for the graphic engine
interface MySpeedGraphicsOptions
{
    struct MyOptions
    {
        void *options;
    }
}

// night time options for the graphic engine
interface MyNightTimeGraphicsOptions
{
    struct MyOptions
    {
        void *options;
    }    
}

// day time options for the graphic engine
interface MyDayTimeGraphicsOptions
{
    struct MyOptions
    {
        void *options;
    }    
}


// source code for the graphic engine
interface MyCodeGraphicsOptionsNightTime : MyNightTimeGraphicsOptions 
{
    struct MyCallbackOptions
    {
        void *opEqualsCallbacks;
    }
}

// source code for the graphic engine
interface MyCodeGraphicsOptionsDayTime : MyNightTimeGraphicsOptions 
{
    struct MyCallbackOptions
    {
        void *opEqualsCallbacks;
    }
}

