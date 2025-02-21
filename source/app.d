import std.stdio;
import std.process : environment;
import std.string;
import std.conv;
void main()
{
       auto env=environment.toAA();
       string ll;
	foreach( line; stdin.byLine())
	{
	   ll= ll ~ to!string(line) ~"\n";
	}
	foreach(key,env.keys) {
	 ll=ll.replace("$"~key,env[key]);
	}
	writeln(ll);
}
