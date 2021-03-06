.class public Lcom/subgraph/orchid/geoip/CountryCodeService;
.super Ljava/lang/Object;
.source "CountryCodeService.java"


# static fields
.field private static final COUNTRY_BEGIN:I = 0xffff00

.field private static final COUNTRY_CODES:[Ljava/lang/String;

.field private static final DATABASE_FILENAME:Ljava/lang/String; = "GeoIP.dat"

.field private static final DEFAULT_INSTANCE:Lcom/subgraph/orchid/geoip/CountryCodeService;

.field private static final MAX_RECORD_LENGTH:I = 0x4

.field private static final STANDARD_RECORD_LENGTH:I = 0x3

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final database:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    const-class v0, Lcom/subgraph/orchid/geoip/CountryCodeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/geoip/CountryCodeService;->logger:Ljava/util/logging/Logger;

    .line 20
    new-instance v0, Lcom/subgraph/orchid/geoip/CountryCodeService;

    invoke-direct {v0}, Lcom/subgraph/orchid/geoip/CountryCodeService;-><init>()V

    sput-object v0, Lcom/subgraph/orchid/geoip/CountryCodeService;->DEFAULT_INSTANCE:Lcom/subgraph/orchid/geoip/CountryCodeService;

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AP"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EU"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AF"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CW"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "AO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "AQ"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AR"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "AT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "AU"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "AW"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "AZ"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "BA"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "BD"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "BE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "BF"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "BG"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "BH"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "BI"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "BJ"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "BN"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "BO"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "BR"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "BT"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "BV"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "BW"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "BY"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "BZ"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "CC"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "CD"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "CF"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "CG"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "CH"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "CI"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "CK"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "CL"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "CM"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "CN"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "CO"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "CR"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "CU"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "CV"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "CX"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "CY"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "CZ"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "DJ"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "DK"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "DZ"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "EC"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "EE"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "EG"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "EH"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "ER"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "ES"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "ET"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "FI"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "FJ"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "FK"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "FM"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "FO"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "SX"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "GA"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "GE"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "GF"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "GH"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "GI"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "GL"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "GM"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "GN"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "GP"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "GQ"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "GR"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "GS"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "GT"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "GW"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "GY"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "HK"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "HM"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "HN"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "HR"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "HT"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "HU"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "IL"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "IO"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "IQ"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "IR"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "IS"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "IT"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "JO"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "JP"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "KE"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "KG"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "KH"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "KI"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "KM"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "KP"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "KR"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "KW"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "KZ"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "LA"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "LB"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "LI"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "LK"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "LR"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "LS"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "LT"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "LU"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "LV"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "LY"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "MA"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "MC"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "MD"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "MG"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "MH"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "MK"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "ML"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "MM"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "MN"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "MO"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "MQ"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "MR"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "MT"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "MU"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "MV"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "MW"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "MX"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "MY"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "MZ"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "NA"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "NC"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "NE"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "NF"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "NG"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "NI"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "NL"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "NO"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "NP"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "NR"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "NU"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "NZ"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "OM"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "PA"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "PE"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "PF"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "PG"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "PH"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "PK"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "PL"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "PM"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "PN"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "PS"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "PT"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "PW"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "PY"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "QA"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "RE"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "RO"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "RU"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "RW"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "SA"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "SB"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "SC"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "SD"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "SE"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "SG"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "SH"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "SI"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "SJ"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "SK"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "SL"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "SM"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "SN"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "SO"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "SR"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "ST"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "SV"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "SY"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "SZ"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "TD"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "TF"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "TG"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "TH"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "TJ"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "TK"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "TM"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "TN"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "TO"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "TL"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "TR"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "TV"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "TW"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "TZ"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "UA"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "UG"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "UM"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "US"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "UY"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "UZ"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "VA"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "VE"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "VI"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "VN"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "VU"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "WF"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "WS"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "YE"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "YT"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "RS"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "ZA"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "ZM"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "ME"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "ZW"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "A1"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "A2"

    aput-object v2, v0, v1

    const-string v1, "O1"

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    const/16 v2, 0xf7

    const-string v3, "AX"

    aput-object v3, v0, v2

    const/16 v2, 0xf8

    const-string v3, "GG"

    aput-object v3, v0, v2

    const/16 v2, 0xf9

    const-string v3, "IM"

    aput-object v3, v0, v2

    const/16 v2, 0xfa

    const-string v3, "JE"

    aput-object v3, v0, v2

    const/16 v2, 0xfb

    const-string v3, "BL"

    aput-object v3, v0, v2

    const/16 v2, 0xfc

    const-string v3, "MF"

    aput-object v3, v0, v2

    const/16 v2, 0xfd

    const-string v3, "BQ"

    aput-object v3, v0, v2

    const/16 v2, 0xfe

    const-string v3, "SS"

    aput-object v3, v0, v2

    const/16 v2, 0xff

    aput-object v1, v0, v2

    .line 26
    sput-object v0, Lcom/subgraph/orchid/geoip/CountryCodeService;->COUNTRY_CODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/subgraph/orchid/geoip/CountryCodeService;->loadDatabase()[B

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/geoip/CountryCodeService;->database:[B

    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 111
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 112
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static getInstance()Lcom/subgraph/orchid/geoip/CountryCodeService;
    .locals 1

    .line 23
    sget-object v0, Lcom/subgraph/orchid/geoip/CountryCodeService;->DEFAULT_INSTANCE:Lcom/subgraph/orchid/geoip/CountryCodeService;

    return-object v0
.end method

.method private static loadDatabase()[B
    .locals 4

    .line 58
    invoke-static {}, Lcom/subgraph/orchid/geoip/CountryCodeService;->openDatabaseStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/subgraph/orchid/geoip/CountryCodeService;->logger:Ljava/util/logging/Logger;

    const-string v2, "Failed to open \'GeoIP.dat\' database file for country code lookups"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v1

    .line 64
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/subgraph/orchid/geoip/CountryCodeService;->loadEntireStream(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 66
    :catch_1
    :try_start_2
    sget-object v2, Lcom/subgraph/orchid/geoip/CountryCodeService;->logger:Ljava/util/logging/Logger;

    const-string v3, "IO error reading database file for country code lookups"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v1

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 71
    :catch_3
    throw v1
.end method

.method private static loadEntireStream(Ljava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 103
    invoke-static {p0, v0}, Lcom/subgraph/orchid/geoip/CountryCodeService;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 104
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private loadRecord(I[B)V
    .locals 3

    mul-int/lit8 p1, p1, 0x6

    .line 159
    iget-object v0, p0, Lcom/subgraph/orchid/geoip/CountryCodeService;->database:[B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static openDatabaseStream()Ljava/io/InputStream;
    .locals 1

    .line 76
    invoke-static {}, Lcom/subgraph/orchid/geoip/CountryCodeService;->tryResourceOpen()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 80
    :cond_0
    invoke-static {}, Lcom/subgraph/orchid/geoip/CountryCodeService;->tryFilesystemOpen()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private seekCountry(Lcom/subgraph/orchid/data/IPv4Address;)I
    .locals 12

    .line 123
    iget-object v0, p0, Lcom/subgraph/orchid/geoip/CountryCodeService;->database:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 129
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/16 v5, 0x1f

    const/4 v6, 0x0

    :goto_0
    if-ltz v5, :cond_5

    .line 133
    invoke-direct {p0, v6, v0}, Lcom/subgraph/orchid/geoip/CountryCodeService;->loadRecord(I[B)V

    .line 135
    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/geoip/CountryCodeService;->unpackRecordValue([BI)I

    move-result v6

    aput v6, v2, v1

    const/4 v6, 0x1

    .line 136
    invoke-direct {p0, v0, v6}, Lcom/subgraph/orchid/geoip/CountryCodeService;->unpackRecordValue([BI)I

    move-result v7

    aput v7, v2, v6

    shl-int v7, v6, v5

    int-to-long v7, v7

    and-long/2addr v7, v3

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_1

    .line 138
    aget v6, v2, v6

    goto :goto_1

    :cond_1
    aget v6, v2, v1

    :goto_1
    const v7, 0xffff00

    if-lt v6, v7, :cond_4

    sub-int/2addr v6, v7

    if-ltz v6, :cond_3

    .line 142
    sget-object v0, Lcom/subgraph/orchid/geoip/CountryCodeService;->COUNTRY_CODES:[Ljava/lang/String;

    array-length v0, v0

    if-le v6, v0, :cond_2

    goto :goto_2

    :cond_2
    return v6

    .line 143
    :cond_3
    :goto_2
    sget-object v0, Lcom/subgraph/orchid/geoip/CountryCodeService;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid index calculated looking up country code record for ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") idx = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return v1

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 153
    :cond_5
    sget-object v0, Lcom/subgraph/orchid/geoip/CountryCodeService;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No record found looking up country code record for ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return v1
.end method

.method private static tryFilesystemOpen()Ljava/io/InputStream;
    .locals 3

    .line 85
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Ljava/io/File;

    const-string v2, "GeoIP.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 91
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2
.end method

.method private static tryResourceOpen()Ljava/io/InputStream;
    .locals 2

    .line 98
    const-class v0, Lcom/subgraph/orchid/geoip/CountryCodeService;

    const-string v1, "/data/GeoIP.dat"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private unpackRecordValue([BI)I
    .locals 5

    const/4 v0, 0x3

    mul-int/lit8 p2, p2, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v3, p2, v1

    .line 166
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public getCountryCodeForAddress(Lcom/subgraph/orchid/data/IPv4Address;)Ljava/lang/String;
    .locals 1

    .line 119
    sget-object v0, Lcom/subgraph/orchid/geoip/CountryCodeService;->COUNTRY_CODES:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/geoip/CountryCodeService;->seekCountry(Lcom/subgraph/orchid/data/IPv4Address;)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method
