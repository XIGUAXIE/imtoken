.class public final enum Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;
.super Ljava/lang/Enum;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/imkey/imkeylibrary/core/foundation/crypto/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AESType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

.field public static final enum CBC:Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

.field public static final enum CTR:Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    const/4 v1, 0x0

    const-string v2, "CTR"

    invoke-direct {v0, v2, v1}, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;->CTR:Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    new-instance v0, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    const/4 v2, 0x1

    const-string v3, "CBC"

    invoke-direct {v0, v3, v2}, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;->CBC:Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    const/4 v3, 0x2

    new-array v3, v3, [Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    .line 12
    sget-object v4, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;->CTR:Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;->$VALUES:[Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;
    .locals 1

    .line 12
    const-class v0, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    return-object p0
.end method

.method public static values()[Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;
    .locals 1

    .line 12
    sget-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;->$VALUES:[Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    invoke-virtual {v0}, [Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/imkey/imkeylibrary/core/foundation/crypto/AES$AESType;

    return-object v0
.end method
