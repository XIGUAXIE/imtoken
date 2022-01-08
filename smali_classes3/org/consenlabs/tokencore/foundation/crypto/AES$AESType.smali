.class public final enum Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;
.super Ljava/lang/Enum;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/tokencore/foundation/crypto/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AESType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

.field public static final enum CBC:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

.field public static final enum CTR:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    const/4 v1, 0x0

    const-string v2, "CTR"

    invoke-direct {v0, v2, v1}, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->CTR:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    new-instance v0, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    const/4 v2, 0x1

    const-string v3, "CBC"

    invoke-direct {v0, v3, v2}, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->CBC:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    .line 9
    sget-object v4, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->CTR:Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->$VALUES:[Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;
    .locals 1

    .line 9
    const-class v0, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    return-object p0
.end method

.method public static values()[Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;
    .locals 1

    .line 9
    sget-object v0, Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->$VALUES:[Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    invoke-virtual {v0}, [Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/consenlabs/tokencore/foundation/crypto/AES$AESType;

    return-object v0
.end method
