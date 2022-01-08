.class public Lim/imkey/imkeylibrary/core/foundation/crypto/SecurityProvider;
.super Ljava/lang/Object;
.source "SecurityProvider.java"


# static fields
.field private static ISDECIDE:Z = false

.field private static PROVIDER_NAME:Ljava/lang/String; = "SC"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvierName()Ljava/lang/String;
    .locals 1

    .line 13
    sget-boolean v0, Lim/imkey/imkeylibrary/core/foundation/crypto/SecurityProvider;->ISDECIDE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/SecurityProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/SecurityProvider;->PROVIDER_NAME:Ljava/lang/String;

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lim/imkey/imkeylibrary/core/foundation/crypto/SecurityProvider;->ISDECIDE:Z

    .line 18
    sget-object v0, Lim/imkey/imkeylibrary/core/foundation/crypto/SecurityProvider;->PROVIDER_NAME:Ljava/lang/String;

    return-object v0
.end method
