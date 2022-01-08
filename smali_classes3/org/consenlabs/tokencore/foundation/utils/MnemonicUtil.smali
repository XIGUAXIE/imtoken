.class public Lorg/consenlabs/tokencore/foundation/utils/MnemonicUtil;
.super Ljava/lang/Object;
.source "MnemonicUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static randomMnemonicCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 23
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->generateRandomBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/MnemonicUtil;->toMnemonicCodes([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static toMnemonicCodes([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    :try_start_0
    sget-object v0, Lorg/bitcoinj/crypto/MnemonicCode;->INSTANCE:Lorg/bitcoinj/crypto/MnemonicCode;

    invoke-virtual {v0, p0}, Lorg/bitcoinj/crypto/MnemonicCode;->toMnemonic([B)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lorg/bitcoinj/crypto/MnemonicException$MnemonicLengthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 33
    :catch_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "mnemonic_checksum_invalid"

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :catch_1
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "mnemonic_length_invalid"

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateMnemonics(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    :try_start_0
    sget-object v0, Lorg/bitcoinj/crypto/MnemonicCode;->INSTANCE:Lorg/bitcoinj/crypto/MnemonicCode;

    invoke-virtual {v0, p0}, Lorg/bitcoinj/crypto/MnemonicCode;->check(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/bitcoinj/crypto/MnemonicException$MnemonicLengthException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bitcoinj/crypto/MnemonicException$MnemonicWordException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 18
    :catch_0
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "mnemonic_checksum_invalid"

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :catch_1
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "mnemonic_word_invalid"

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :catch_2
    new-instance p0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "mnemonic_length_invalid"

    invoke-direct {p0, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
