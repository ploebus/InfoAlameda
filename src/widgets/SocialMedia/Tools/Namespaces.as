////////////////////////////////////////////////////////////////////////////////
//
// Copyright (c) 2010 ESRI
//
// All rights reserved under the copyright laws of the United States.
// You may freely redistribute and use this software, with or
// without modification, provided you include the original copyright
// and use restrictions.  See use restrictions in the file:
// <install location>/License.txt
//
////////////////////////////////////////////////////////////////////////////////
package widgets.SocialMedia.Tools
{

public class Namespaces
{
    public static const ATOM_NS:Namespace = new Namespace("http://www.w3.org/2005/Atom");
    public static const GEORSS_NS:Namespace = new Namespace("http://www.georss.org/georss");
    public static const GML_NS:Namespace = new Namespace("http://www.opengis.net/gml");
 	public static const MEDIA_NS:Namespace   = new Namespace("http://search.yahoo.com/mrss/");
	public static const YOUTUBE_NS:Namespace = new Namespace("http://gdata.youtube.com/schemas/2007");
	public static const TWITTER_NS:Namespace = new Namespace("http://api.twitter.com/"); 

    public function Namespaces(singletonEnforcer:SingletonEnforcer)
    {
    }
}

}

class SingletonEnforcer
{
}
