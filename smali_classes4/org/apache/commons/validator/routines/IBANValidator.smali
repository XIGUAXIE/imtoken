.class public Lorg/apache/commons/validator/routines/IBANValidator;
.super Ljava/lang/Object;
.source "IBANValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/validator/routines/IBANValidator$Validator;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMATS:[Lorg/apache/commons/validator/routines/IBANValidator$Validator;

.field public static final DEFAULT_IBAN_VALIDATOR:Lorg/apache/commons/validator/routines/IBANValidator;


# instance fields
.field private final formatValidators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/routines/IBANValidator$Validator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x4d

    new-array v0, v0, [Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    .line 99
    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const/16 v2, 0x18

    const-string v3, "AD"

    const-string v4, "AD\\d{10}[A-Z0-9]{12}"

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const/16 v3, 0x17

    const-string v4, "AE"

    const-string v5, "AE\\d{21}"

    invoke-direct {v1, v4, v3, v5}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const/16 v4, 0x1c

    const-string v5, "AL"

    const-string v6, "AL\\d{10}[A-Z0-9]{16}"

    invoke-direct {v1, v5, v4, v6}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x2

    aput-object v1, v0, v5

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const/16 v5, 0x14

    const-string v6, "AT"

    const-string v7, "AT\\d{18}"

    invoke-direct {v1, v6, v5, v7}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v6, 0x3

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v6, "AZ"

    const-string v7, "AZ\\d{2}[A-Z]{4}[A-Z0-9]{20}"

    invoke-direct {v1, v6, v4, v7}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v6, "BA"

    const-string v7, "BA\\d{18}"

    invoke-direct {v1, v6, v5, v7}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v6, 0x5

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const/16 v6, 0x10

    const-string v7, "BE"

    const-string v8, "BE\\d{14}"

    invoke-direct {v1, v7, v6, v8}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v7, 0x6

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const/16 v7, 0x16

    const-string v8, "BG"

    const-string v9, "BG\\d{2}[A-Z]{4}\\d{6}[A-Z0-9]{8}"

    invoke-direct {v1, v8, v7, v9}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v8, 0x7

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v8, "BH"

    const-string v9, "BH\\d{2}[A-Z]{4}[A-Z0-9]{14}"

    invoke-direct {v1, v8, v7, v9}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x8

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const/16 v8, 0x1d

    const-string v9, "BR"

    const-string v10, "BR\\d{25}[A-Z]{1}[A-Z0-9]{1}"

    invoke-direct {v1, v9, v8, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x9

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "BY"

    const-string v10, "BY\\d{2}[A-Z0-9]{4}\\d{4}[A-Z0-9]{16}"

    invoke-direct {v1, v9, v4, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0xa

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const/16 v9, 0x15

    const-string v10, "CH"

    const-string v11, "CH\\d{7}[A-Z0-9]{12}"

    invoke-direct {v1, v10, v9, v11}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0xb

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v10, "CR"

    const-string v11, "CR\\d{20}"

    invoke-direct {v1, v10, v7, v11}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0xc

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v10, "CY"

    const-string v11, "CY\\d{10}[A-Z0-9]{16}"

    invoke-direct {v1, v10, v4, v11}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0xd

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v10, "CZ"

    const-string v11, "CZ\\d{22}"

    invoke-direct {v1, v10, v2, v11}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0xe

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v10, "DE"

    const-string v11, "DE\\d{20}"

    invoke-direct {v1, v10, v7, v11}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0xf

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const/16 v11, 0x12

    const-string v12, "DK"

    const-string v13, "DK\\d{16}"

    invoke-direct {v1, v12, v11, v13}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v6, "DO"

    const-string v12, "DO\\d{2}[A-Z0-9]{4}\\d{20}"

    invoke-direct {v1, v6, v4, v12}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x11

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v6, "EE"

    const-string v12, "EE\\d{18}"

    invoke-direct {v1, v6, v5, v12}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v6, "EG"

    const-string v12, "EG\\d{27}"

    invoke-direct {v1, v6, v8, v12}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x13

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v12, "ES"

    const-string v13, "ES\\d{22}"

    invoke-direct {v1, v12, v2, v13}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v12, "FI"

    const-string v13, "FI\\d{16}"

    invoke-direct {v1, v12, v11, v13}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v12, "FO"

    const-string v13, "FO\\d{16}"

    invoke-direct {v1, v12, v11, v13}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const/16 v12, 0x1b

    const-string v13, "FR"

    const-string v14, "FR\\d{12}[A-Z0-9]{11}\\d{2}"

    invoke-direct {v1, v13, v12, v14}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v13, "GB"

    const-string v14, "GB\\d{2}[A-Z]{4}\\d{14}"

    invoke-direct {v1, v13, v7, v14}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v13, "GE"

    const-string v14, "GE\\d{2}[A-Z]{2}\\d{16}"

    invoke-direct {v1, v13, v7, v14}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x19

    aput-object v1, v0, v13

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v14, "GI"

    const-string v15, "GI\\d{2}[A-Z]{4}[A-Z0-9]{15}"

    invoke-direct {v1, v14, v3, v15}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v14, 0x1a

    aput-object v1, v0, v14

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v15, "GL"

    const-string v13, "GL\\d{16}"

    invoke-direct {v1, v15, v11, v13}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v12

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v13, "GR"

    const-string v15, "GR\\d{9}[A-Z0-9]{16}"

    invoke-direct {v1, v13, v12, v15}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v13, "GT"

    const-string v15, "GT\\d{2}[A-Z0-9]{24}"

    invoke-direct {v1, v13, v4, v15}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v13, "HR"

    const-string v15, "HR\\d{19}"

    invoke-direct {v1, v13, v9, v15}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v13, 0x1e

    aput-object v1, v0, v13

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v15, "HU"

    const-string v8, "HU\\d{26}"

    invoke-direct {v1, v15, v4, v8}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x1f

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v15, "IE"

    const-string v10, "IE\\d{2}[A-Z]{4}\\d{14}"

    invoke-direct {v1, v15, v7, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x20

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v15, "IL"

    const-string v11, "IL\\d{21}"

    invoke-direct {v1, v15, v3, v11}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v11, 0x21

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v11, "IQ"

    const-string v15, "IQ\\d{2}[A-Z]{4}\\d{15}"

    invoke-direct {v1, v11, v3, v15}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v11, 0x22

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v11, "IS"

    const-string v15, "IS\\d{24}"

    invoke-direct {v1, v11, v14, v15}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v11, 0x23

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v11, "IT"

    const-string v15, "IT\\d{2}[A-Z]{1}\\d{10}[A-Z0-9]{12}"

    invoke-direct {v1, v11, v12, v15}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v11, 0x24

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v11, "JO"

    const-string v15, "JO\\d{2}[A-Z]{4}\\d{4}[A-Z0-9]{18}"

    invoke-direct {v1, v11, v13, v15}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v11, 0x25

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v11, "KW"

    const-string v15, "KW\\d{2}[A-Z]{4}[A-Z0-9]{22}"

    invoke-direct {v1, v11, v13, v15}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v11, 0x26

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v11, "KZ"

    const-string v15, "KZ\\d{5}[A-Z0-9]{13}"

    invoke-direct {v1, v11, v5, v15}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v11, 0x27

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v11, "LB"

    const-string v15, "LB\\d{6}[A-Z0-9]{20}"

    invoke-direct {v1, v11, v4, v15}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v11, 0x28

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v11, "LC"

    const-string v15, "LC\\d{2}[A-Z]{4}[A-Z0-9]{24}"

    invoke-direct {v1, v11, v10, v15}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x29

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v10, "LI"

    const-string v11, "LI\\d{7}[A-Z0-9]{12}"

    invoke-direct {v1, v10, v9, v11}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x2a

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v10, "LT"

    const-string v11, "LT\\d{18}"

    invoke-direct {v1, v10, v5, v11}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x2b

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v10, "LU"

    const-string v11, "LU\\d{5}[A-Z0-9]{13}"

    invoke-direct {v1, v10, v5, v11}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0x2c

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v10, "LV"

    const-string v11, "LV\\d{2}[A-Z]{4}[A-Z0-9]{13}"

    invoke-direct {v1, v10, v9, v11}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x2d

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "MC"

    const-string v10, "MC\\d{12}[A-Z0-9]{11}\\d{2}"

    invoke-direct {v1, v9, v12, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x2e

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "MD"

    const-string v10, "MD\\d{2}[A-Z0-9]{20}"

    invoke-direct {v1, v9, v2, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x2f

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "ME"

    const-string v10, "ME\\d{20}"

    invoke-direct {v1, v9, v7, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x30

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "MK"

    const-string v10, "MK\\d{5}[A-Z0-9]{10}\\d{2}"

    invoke-direct {v1, v9, v6, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x31

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "MR"

    const-string v10, "MR\\d{25}"

    invoke-direct {v1, v9, v12, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x32

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "MT"

    const-string v10, "MT\\d{2}[A-Z]{4}\\d{5}[A-Z0-9]{18}"

    invoke-direct {v1, v9, v8, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x33

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "MU"

    const-string v10, "MU\\d{2}[A-Z]{4}\\d{19}[A-Z]{3}"

    invoke-direct {v1, v9, v13, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x34

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "NL"

    const-string v10, "NL\\d{2}[A-Z]{4}\\d{10}"

    const/16 v11, 0x12

    invoke-direct {v1, v9, v11, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x35

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "NO"

    const-string v10, "NO\\d{13}"

    const/16 v11, 0xf

    invoke-direct {v1, v9, v11, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x36

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "PK"

    const-string v10, "PK\\d{2}[A-Z]{4}[A-Z0-9]{16}"

    invoke-direct {v1, v9, v2, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x37

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "PL"

    const-string v10, "PL\\d{26}"

    invoke-direct {v1, v9, v4, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x38

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "PS"

    const-string v10, "PS\\d{2}[A-Z]{4}[A-Z0-9]{21}"

    const/16 v11, 0x1d

    invoke-direct {v1, v9, v11, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x39

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "PT"

    const-string v10, "PT\\d{23}"

    const/16 v11, 0x19

    invoke-direct {v1, v9, v11, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x3a

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "QA"

    const-string v10, "QA\\d{2}[A-Z]{4}[A-Z0-9]{21}"

    const/16 v11, 0x1d

    invoke-direct {v1, v9, v11, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x3b

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "RO"

    const-string v10, "RO\\d{2}[A-Z]{4}[A-Z0-9]{16}"

    invoke-direct {v1, v9, v2, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x3c

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "RS"

    const-string v10, "RS\\d{20}"

    invoke-direct {v1, v9, v7, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x3d

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "SA"

    const-string v10, "SA\\d{4}[A-Z0-9]{18}"

    invoke-direct {v1, v9, v2, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x3e

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v9, "SC"

    const-string v10, "SC\\d{2}[A-Z]{4}\\d{20}[A-Z]{3}"

    invoke-direct {v1, v9, v8, v10}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x3f

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v8, "SE"

    const-string v9, "SE\\d{22}"

    invoke-direct {v1, v8, v2, v9}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0x40

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v8, "SI"

    const-string v9, "SI\\d{17}"

    invoke-direct {v1, v8, v6, v9}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x41

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v6, "SK"

    const-string v8, "SK\\d{22}"

    invoke-direct {v1, v6, v2, v8}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x42

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v6, "SM"

    const-string v8, "SM\\d{2}[A-Z]{1}\\d{10}[A-Z0-9]{12}"

    invoke-direct {v1, v6, v12, v8}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x43

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v6, "ST"

    const-string v8, "ST\\d{23}"

    const/16 v9, 0x19

    invoke-direct {v1, v6, v9, v8}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v6, 0x44

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v6, "SV"

    const-string v8, "SV\\d{2}[A-Z]{4}\\d{20}"

    invoke-direct {v1, v6, v4, v8}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x45

    aput-object v1, v0, v4

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v4, "TL"

    const-string v6, "TL\\d{21}"

    invoke-direct {v1, v4, v3, v6}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x46

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v3, "TN"

    const-string v4, "TN\\d{22}"

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x47

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v3, "TR"

    const-string v4, "TR\\d{8}[A-Z0-9]{16}"

    invoke-direct {v1, v3, v14, v4}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x48

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v3, "UA"

    const-string v4, "UA\\d{8}[A-Z0-9]{19}"

    const/16 v6, 0x1d

    invoke-direct {v1, v3, v6, v4}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x49

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v3, "VA"

    const-string v4, "VA\\d{20}"

    invoke-direct {v1, v3, v7, v4}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0x4a

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v3, "VG"

    const-string v4, "VG\\d{2}[A-Z]{4}\\d{16}"

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    const-string v2, "XK"

    const-string v3, "XK\\d{18}"

    invoke-direct {v1, v2, v5, v3}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/validator/routines/IBANValidator;->DEFAULT_FORMATS:[Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    .line 180
    new-instance v0, Lorg/apache/commons/validator/routines/IBANValidator;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/IBANValidator;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/IBANValidator;->DEFAULT_IBAN_VALIDATOR:Lorg/apache/commons/validator/routines/IBANValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 195
    sget-object v0, Lorg/apache/commons/validator/routines/IBANValidator;->DEFAULT_FORMATS:[Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    invoke-direct {p0, v0}, Lorg/apache/commons/validator/routines/IBANValidator;-><init>([Lorg/apache/commons/validator/routines/IBANValidator$Validator;)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/validator/routines/IBANValidator$Validator;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-direct {p0, p1}, Lorg/apache/commons/validator/routines/IBANValidator;->createValidators([Lorg/apache/commons/validator/routines/IBANValidator$Validator;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/validator/routines/IBANValidator;->formatValidators:Ljava/util/Map;

    return-void
.end method

.method private createValidators([Lorg/apache/commons/validator/routines/IBANValidator$Validator;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/validator/routines/IBANValidator$Validator;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/routines/IBANValidator$Validator;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 209
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 210
    iget-object v4, v3, Lorg/apache/commons/validator/routines/IBANValidator$Validator;->countryCode:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lorg/apache/commons/validator/routines/IBANValidator;
    .locals 1

    .line 188
    sget-object v0, Lorg/apache/commons/validator/routines/IBANValidator;->DEFAULT_IBAN_VALIDATOR:Lorg/apache/commons/validator/routines/IBANValidator;

    return-object v0
.end method


# virtual methods
.method public getDefaultValidators()[Lorg/apache/commons/validator/routines/IBANValidator$Validator;
    .locals 2

    .line 245
    sget-object v0, Lorg/apache/commons/validator/routines/IBANValidator;->DEFAULT_FORMATS:[Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    return-object v0
.end method

.method public getValidator(Ljava/lang/String;)Lorg/apache/commons/validator/routines/IBANValidator$Validator;
    .locals 2

    if-eqz p1, :cond_1

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 260
    iget-object v0, p0, Lorg/apache/commons/validator/routines/IBANValidator;->formatValidators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasValidator(Ljava/lang/String;)Z
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/IBANValidator;->getValidator(Ljava/lang/String;)Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 3

    .line 222
    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/routines/IBANValidator;->getValidator(Ljava/lang/String;)Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, v0, Lorg/apache/commons/validator/routines/IBANValidator$Validator;->lengthOfIBAN:I

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lorg/apache/commons/validator/routines/IBANValidator$Validator;->validator:Lorg/apache/commons/validator/routines/RegexValidator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/RegexValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    sget-object v0, Lorg/apache/commons/validator/routines/checkdigit/IBANCheckDigit;->IBAN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    invoke-interface {v0, p1}, Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setValidator(Ljava/lang/String;ILjava/lang/String;)Lorg/apache/commons/validator/routines/IBANValidator$Validator;
    .locals 1

    .line 291
    sget-object v0, Lorg/apache/commons/validator/routines/IBANValidator;->DEFAULT_IBAN_VALIDATOR:Lorg/apache/commons/validator/routines/IBANValidator;

    if-eq p0, v0, :cond_1

    if-gez p2, :cond_0

    .line 295
    iget-object p2, p0, Lorg/apache/commons/validator/routines/IBANValidator;->formatValidators:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    return-object p1

    .line 297
    :cond_0
    new-instance v0, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/validator/routines/IBANValidator$Validator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/validator/routines/IBANValidator;->setValidator(Lorg/apache/commons/validator/routines/IBANValidator$Validator;)Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    move-result-object p1

    return-object p1

    .line 292
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The singleton validator cannot be modified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValidator(Lorg/apache/commons/validator/routines/IBANValidator$Validator;)Lorg/apache/commons/validator/routines/IBANValidator$Validator;
    .locals 2

    .line 272
    sget-object v0, Lorg/apache/commons/validator/routines/IBANValidator;->DEFAULT_IBAN_VALIDATOR:Lorg/apache/commons/validator/routines/IBANValidator;

    if-eq p0, v0, :cond_0

    .line 275
    iget-object v0, p0, Lorg/apache/commons/validator/routines/IBANValidator;->formatValidators:Ljava/util/Map;

    iget-object v1, p1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;->countryCode:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/routines/IBANValidator$Validator;

    return-object p1

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The singleton validator cannot be modified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
