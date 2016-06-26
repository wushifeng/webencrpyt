package cn.csbit.model;

import cn.csbit.model.base.BaseModel;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "T_USER")
public class User extends BaseModel {
    /**
     * serial version id.
     */
    private static final long serialVersionUID = 7378694178277229019L;

    @Id
    @GeneratedValue
    @Column(name = "USER_ID", unique = true, nullable = false)
    private Integer id;

    @Column(name = "USER_NAME", nullable = false)
    private String name;

    @Column(name = "USER_EMAIL", unique = true, nullable = false, length = 64)
    private String email;

    @Column(name = "USER_BIRTH", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date birth;

    @Column(name = "USER_PASSWORD", nullable = false, length = 64)
    private String password;

    @Column(name = "CREATED_AT", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;

    @Column(name = "UPDATED_AT", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;

    @Column(name = "VERSION", nullable = false)
    @Version
    private Integer version;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }
}
