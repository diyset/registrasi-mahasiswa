package id.ac.tazkia.registration.registrasimahasiswa.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class NotifikasiReset {
    private String konfigurasi;
    private String email;
    private String mobile;
    private Object data;
}
