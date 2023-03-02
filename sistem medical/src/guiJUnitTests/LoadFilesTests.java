package guiJUnitTests;

import java.io.File;

import org.junit.Assert;
import org.junit.Test;

import gui.Parser;

public class LoadFilesTests {

	private static Parser parser = new Parser();
	
	@SuppressWarnings("static-access")
	@Test
	public void XMLFileLoadingTest()
	{
		parser.chooser.setSelectedFile(new File(new File(System.getProperty("user.dir"))
				.getParent()+"\\sistem_expert.xml"));
		parser.btnBrowseXML.doClick();
		Assert.assertTrue(new File(System.getProperty("user.dir")+
				"\\sistem_expert.xml").exists());
	}
	
	@SuppressWarnings("static-access")
	@Test
	public void JSONFileLoadingTest()
	{
		parser.chooser.setSelectedFile(new File(new File(System.getProperty("user.dir"))
				.getParent()+"\\sistem_expert.json"));
		parser.btnBrowseJSON.doClick();
		Assert.assertTrue(new File(System.getProperty("user.dir")+
				"\\sistem_expert.json").exists());
	}
}
