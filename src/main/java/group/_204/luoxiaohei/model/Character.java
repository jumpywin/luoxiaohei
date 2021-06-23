package group._204.luoxiaohei.model;



/*
 * 这个类是数据库中表的映射，
 * 类中的每个属性对于表中的每一个字段
 * 自动生成get方法，toString()，hassh();
 * */


import java.util.Objects;

public class Character {
    private int id;
    private String name;
    private int racial;
    private String note;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Character character = (Character) o;
        return id == character.id &&
                racial == character.racial &&
                Objects.equals(name, character.name) &&
                Objects.equals(note, character.note);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, racial, note);
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getRacial() {
        return racial;
    }

    public void setRacial(int racial) {
        this.racial = racial;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", racial=" + racial +
                ", note='" + note + '\'' +
                '}';
    }
}
