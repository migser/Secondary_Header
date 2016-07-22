public class Secondary_Header {
	    @AuraEnabled
    	public static List<string> getValores(string recordId, string sObjectName, string field1, string field2, string field3){
            system.debug('Sacando datos del objeto: '+field1);
            if (((field1 != null)&&(field1!='')) && ((field2 != null)&&(field2!='')) && ((field3!= null)&&(field3!=''))){
        string soql = 'select Id, ' + field1 + field2 + field3 + ' from ' + SobjectName + ' where id = \'' + recordId + '\'';
                List<String> resultado = new List<String> ();
                system.debug(soql);
            try {
            list<sobject> records = Database.query(soql);
                resultado.add((String)records[0].get(field1));
                resultado.add((String)records[0].get(field2));
                resultado.add((String)records[0].get(field3));
                return resultado;
            }
            catch (Exception e) {
                system.debug('Excepción: '+e);
                return null;
            }
            } else {
                system.debug('Sin parámetro!!');
                return null;
            }
          
    }
}