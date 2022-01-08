.class synthetic Lorg/bitcoinj/wallet/DeterministicKeyChain$1;
.super Ljava/lang/Object;
.source "DeterministicKeyChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/DeterministicKeyChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bitcoinj$wallet$KeyChain$KeyPurpose:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 458
    invoke-static {}, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->values()[Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain$1;->$SwitchMap$org$bitcoinj$wallet$KeyChain$KeyPurpose:[I

    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->RECEIVE_FUNDS:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain$1;->$SwitchMap$org$bitcoinj$wallet$KeyChain$KeyPurpose:[I

    sget-object v1, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->REFUND:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain$1;->$SwitchMap$org$bitcoinj$wallet$KeyChain$KeyPurpose:[I

    sget-object v1, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->AUTHENTICATION:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/bitcoinj/wallet/DeterministicKeyChain$1;->$SwitchMap$org$bitcoinj$wallet$KeyChain$KeyPurpose:[I

    sget-object v1, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->CHANGE:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
