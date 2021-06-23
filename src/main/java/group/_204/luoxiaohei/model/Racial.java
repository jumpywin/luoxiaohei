package group._204.luoxiaohei.model;


import java.util.Objects;

public class Racial {
    int id;
    String name;

    @Override
    public String toString() {
        return "Racial{" +
                "id=" + id +
                ", name=" + name +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Racial racial = (Racial) o;
        return id == racial.id &&
                name == racial.name;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
