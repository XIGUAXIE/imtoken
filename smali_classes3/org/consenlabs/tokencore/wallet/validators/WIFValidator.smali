.class public final Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;
.super Ljava/lang/Object;
.source "WIFValidator.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/validators/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/consenlabs/tokencore/wallet/validators/Validator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field network:Lorg/bitcoinj/core/NetworkParameters;

.field requireCompressed:Z

.field wif:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->requireCompressed:Z

    .line 20
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->wif:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->network:Lorg/bitcoinj/core/NetworkParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;Z)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->requireCompressed:Z

    .line 25
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->wif:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->network:Lorg/bitcoinj/core/NetworkParameters;

    .line 27
    iput-boolean p3, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->requireCompressed:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic validate()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->validate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/lang/String;
    .locals 2

    .line 33
    :try_start_0
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->network:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->wif:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bitcoinj/core/DumpedPrivateKey;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/DumpedPrivateKey;
    :try_end_0
    .catch Lorg/bitcoinj/core/WrongNetworkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bitcoinj/core/AddressFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    iget-boolean v0, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->requireCompressed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->network:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->wif:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bitcoinj/core/DumpedPrivateKey;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/DumpedPrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/DumpedPrivateKey;->getKey()Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->isCompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "segwit_needs_compress_public_key"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/validators/WIFValidator;->wif:Ljava/lang/String;

    return-object v0

    .line 37
    :catch_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "wif_invalid"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :catch_1
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "wif_wrong_network"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
