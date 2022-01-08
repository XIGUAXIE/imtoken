.class synthetic Lorg/bitcoinj/crypto/HDKeyDerivation$1;
.super Ljava/lang/Object;
.source "HDKeyDerivation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/crypto/HDKeyDerivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bitcoinj$crypto$HDKeyDerivation$PublicDeriveMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 194
    invoke-static {}, Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;->values()[Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bitcoinj/crypto/HDKeyDerivation$1;->$SwitchMap$org$bitcoinj$crypto$HDKeyDerivation$PublicDeriveMode:[I

    :try_start_0
    sget-object v1, Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;->NORMAL:Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;

    invoke-virtual {v1}, Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/bitcoinj/crypto/HDKeyDerivation$1;->$SwitchMap$org$bitcoinj$crypto$HDKeyDerivation$PublicDeriveMode:[I

    sget-object v1, Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;->WITH_INVERSION:Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;

    invoke-virtual {v1}, Lorg/bitcoinj/crypto/HDKeyDerivation$PublicDeriveMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
