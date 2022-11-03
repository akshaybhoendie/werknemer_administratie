package repository;

import configuration.DatabaseConfiguration;
import domain.Werknemer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class WerknemerDao {

    private static final String GET_ALL_WERKNEMERS= "select * from werknemer";
    private Statement statement = null;
    private Connection connection;

    public WerknemerDao() {
        connection = DatabaseConfiguration.getConnection();
    }

    public List<Werknemer> getWerknemers(){
        List<Werknemer> werknemerList = new ArrayList<>();
        try{
            statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(GET_ALL_WERKNEMERS);

            while (rs.next()) {
                int id = rs.getInt("id");
                String voornaam = rs.getString("voornaam");
                String achternaam = rs.getString("achternaam");
                String extensie = rs.getString("extensie");
                String telefoon = rs.getString("telefoon");

                werknemerList.add(new Werknemer(id, voornaam, achternaam, extensie, telefoon));

            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return werknemerList;
    }

}



