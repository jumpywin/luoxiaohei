package group._204.luoxiaohei.model;

import lombok.Data;

import java.util.Objects;


/*
Ability实体类 每个类对应数据库里一张表的模板
 */
@Data
public class Ability {


    private int id;
    private String name;
    private String note;

    @Override
    public String toString() {
        return "Ability{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", note='" + note + '\'' +
                '}';
    }

    public Ability() {
    }

    public Ability(int id, String name, String note) {
        this.id = id;
        this.name = name;
        this.note = note;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Ability ability = (Ability) o;
        return id == ability.id &&
                Objects.equals(name, ability.name) &&
                Objects.equals(note, ability.note);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, note);
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getNote() {
        return note;
    }
}
