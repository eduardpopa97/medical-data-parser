package guiJUnitTests;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import gui.UpdateFilesFrame;

public class AddEmptySymptomsInTableTests {

	private UpdateFilesFrame updateframe = new UpdateFilesFrame();

	@SuppressWarnings("static-access")
	@Test
	public void addEmptySymptomsTest()
	{
		List<String> simp = new ArrayList<String>();
		simp.add("febra");
		simp.add("durere_cap");
		simp.add("");
		simp.add("frisoane");
		simp.add("gat_umflat");
		simp.add("nas_infundat");
		simp.add("tuse");
		for(int i=0; i<simp.size(); i++)
		{
			updateframe.newSymptomField.setText(simp.get(i));
			updateframe.btnAddSymptom.doClick();
		}
		List<String> test = new ArrayList<String>();
		for(int i=0; i<updateframe.table.getModel().getRowCount();i++)
		{
			test.add((String) updateframe.table.getModel().getValueAt(i, 0));
		}
		simp.remove(2);
		Assert.assertEquals(test, simp);
	}
	
}
