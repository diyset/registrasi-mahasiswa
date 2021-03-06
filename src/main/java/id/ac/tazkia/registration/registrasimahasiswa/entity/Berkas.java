package id.ac.tazkia.registration.registrasimahasiswa.entity;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity @Data
public class Berkas {
    @Id
    @GeneratedValue(generator = "uuid" )
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "id_pendaftar")
    private Pendaftar pendaftar;

    @NotNull @Enumerated(EnumType.STRING)
    private JenisBerkas jenisBerkas;

    private String fileBerkas;

}
