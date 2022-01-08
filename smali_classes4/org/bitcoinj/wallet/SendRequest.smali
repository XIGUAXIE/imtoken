.class public Lorg/bitcoinj/wallet/SendRequest;
.super Ljava/lang/Object;
.source "SendRequest.java"


# instance fields
.field public aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

.field public changeAddress:Lorg/bitcoinj/core/Address;

.field public coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

.field completed:Z

.field public emptyWallet:Z

.field public ensureMinRequiredFee:Z

.field public exchangeRate:Lorg/bitcoinj/utils/ExchangeRate;

.field public feePerKb:Lorg/bitcoinj/core/Coin;

.field public memo:Ljava/lang/String;

.field public missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

.field public shuffleOutputs:Z

.field public signInputs:Z

.field public tx:Lorg/bitcoinj/core/Transaction;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lorg/bitcoinj/wallet/SendRequest;->emptyWallet:Z

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lorg/bitcoinj/wallet/SendRequest;->changeAddress:Lorg/bitcoinj/core/Address;

    .line 92
    invoke-static {}, Lorg/bitcoinj/core/Context;->get()Lorg/bitcoinj/core/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Context;->getFeePerKb()Lorg/bitcoinj/core/Coin;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/SendRequest;->feePerKb:Lorg/bitcoinj/core/Coin;

    .line 103
    invoke-static {}, Lorg/bitcoinj/core/Context;->get()Lorg/bitcoinj/core/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Context;->isEnsureMinRequiredFee()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bitcoinj/wallet/SendRequest;->ensureMinRequiredFee:Z

    const/4 v1, 0x1

    .line 108
    iput-boolean v1, p0, Lorg/bitcoinj/wallet/SendRequest;->signInputs:Z

    .line 115
    iput-object v0, p0, Lorg/bitcoinj/wallet/SendRequest;->aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 122
    iput-object v0, p0, Lorg/bitcoinj/wallet/SendRequest;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

    .line 129
    iput-boolean v1, p0, Lorg/bitcoinj/wallet/SendRequest;->shuffleOutputs:Z

    .line 136
    sget-object v1, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->THROW:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    iput-object v1, p0, Lorg/bitcoinj/wallet/SendRequest;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    .line 141
    iput-object v0, p0, Lorg/bitcoinj/wallet/SendRequest;->exchangeRate:Lorg/bitcoinj/utils/ExchangeRate;

    .line 147
    iput-object v0, p0, Lorg/bitcoinj/wallet/SendRequest;->memo:Ljava/lang/String;

    return-void
.end method

.method public static childPaysForParent(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;
    .locals 3

    .line 208
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionOutput;

    .line 209
    invoke-virtual {v1, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMine(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/bitcoinj/core/Coin;->isGreaterThan(Lorg/bitcoinj/core/Coin;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Can\'t find adequately sized output that spends to us"

    .line 216
    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v0, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 219
    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionInput;

    .line 220
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    sget-object p2, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->CHANGE:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {p0, p2}, Lorg/bitcoinj/wallet/Wallet;->freshAddress(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/Address;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 221
    sget-object p0, Lorg/bitcoinj/core/Transaction$Purpose;->RAISE_FEE:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v0, p0}, Lorg/bitcoinj/core/Transaction;->setPurpose(Lorg/bitcoinj/core/Transaction$Purpose;)V

    .line 222
    invoke-static {v0}, Lorg/bitcoinj/wallet/SendRequest;->forTx(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object p0

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lorg/bitcoinj/wallet/SendRequest;->completed:Z

    return-object p0
.end method

.method public static emptyWallet(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/wallet/SendRequest;
    .locals 3

    .line 192
    new-instance v0, Lorg/bitcoinj/wallet/SendRequest;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/SendRequest;-><init>()V

    .line 193
    invoke-virtual {p0}, Lorg/bitcoinj/core/Address;->getParameters()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    const-string v2, "Address is for an unknown network"

    .line 194
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v2, Lorg/bitcoinj/core/Transaction;

    invoke-direct {v2, v1}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    iput-object v2, v0, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    .line 196
    sget-object v1, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v2, v1, p0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    const/4 p0, 0x1

    .line 197
    iput-boolean p0, v0, Lorg/bitcoinj/wallet/SendRequest;->emptyWallet:Z

    return-object v0
.end method

.method public static forTx(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/wallet/SendRequest;
    .locals 1

    .line 186
    new-instance v0, Lorg/bitcoinj/wallet/SendRequest;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/SendRequest;-><init>()V

    .line 187
    iput-object p0, v0, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    return-object v0
.end method

.method public static to(Lorg/bitcoinj/core/Address;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;
    .locals 3

    .line 161
    new-instance v0, Lorg/bitcoinj/wallet/SendRequest;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/SendRequest;-><init>()V

    .line 162
    invoke-virtual {p0}, Lorg/bitcoinj/core/Address;->getParameters()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    const-string v2, "Address is for an unknown network"

    .line 163
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v2, Lorg/bitcoinj/core/Transaction;

    invoke-direct {v2, v1}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    iput-object v2, v0, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    .line 165
    invoke-virtual {v2, p1, p0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    return-object v0
.end method

.method public static to(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;
    .locals 2

    .line 178
    new-instance v0, Lorg/bitcoinj/wallet/SendRequest;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/SendRequest;-><init>()V

    .line 179
    new-instance v1, Lorg/bitcoinj/core/Transaction;

    invoke-direct {v1, p0}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    iput-object v1, v0, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    .line 180
    invoke-virtual {v1, p2, p1}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/core/TransactionOutput;

    return-object v0
.end method

.method public static toCLTVPaymentChannel(Lorg/bitcoinj/core/NetworkParameters;ILorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;
    .locals 2

    if-ltz p1, :cond_0

    const v0, 0x1dcd6500

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Block number was too large"

    .line 234
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    int-to-long v0, p1

    .line 235
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bitcoinj/wallet/SendRequest;->toCLTVPaymentChannel(Lorg/bitcoinj/core/NetworkParameters;Ljava/math/BigInteger;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object p0

    return-object p0
.end method

.method public static toCLTVPaymentChannel(Lorg/bitcoinj/core/NetworkParameters;Ljava/math/BigInteger;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;
    .locals 1

    .line 239
    new-instance v0, Lorg/bitcoinj/wallet/SendRequest;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/SendRequest;-><init>()V

    .line 240
    invoke-static {p1, p2, p3}, Lorg/bitcoinj/script/ScriptBuilder;->createCLTVPaymentChannelOutput(Ljava/math/BigInteger;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    .line 241
    new-instance p2, Lorg/bitcoinj/core/Transaction;

    invoke-direct {p2, p0}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    iput-object p2, v0, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    .line 242
    invoke-virtual {p2, p4, p1}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    return-object v0
.end method

.method public static toCLTVPaymentChannel(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/Date;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;
    .locals 4

    .line 228
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x1dcd6500

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v2, "Release time was too small"

    .line 229
    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 230
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bitcoinj/wallet/SendRequest;->toCLTVPaymentChannel(Lorg/bitcoinj/core/NetworkParameters;Ljava/math/BigInteger;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fromPaymentDetails(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoinj/wallet/SendRequest;
    .locals 1

    .line 248
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMemo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/SendRequest;->memo:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 256
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues()Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 257
    iget-boolean v1, p0, Lorg/bitcoinj/wallet/SendRequest;->emptyWallet:Z

    const-string v2, "emptyWallet"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 258
    iget-object v1, p0, Lorg/bitcoinj/wallet/SendRequest;->changeAddress:Lorg/bitcoinj/core/Address;

    const-string v2, "changeAddress"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 259
    iget-object v1, p0, Lorg/bitcoinj/wallet/SendRequest;->feePerKb:Lorg/bitcoinj/core/Coin;

    const-string v2, "feePerKb"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 260
    iget-boolean v1, p0, Lorg/bitcoinj/wallet/SendRequest;->ensureMinRequiredFee:Z

    const-string v2, "ensureMinRequiredFee"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 261
    iget-boolean v1, p0, Lorg/bitcoinj/wallet/SendRequest;->signInputs:Z

    const-string v2, "signInputs"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 262
    iget-object v1, p0, Lorg/bitcoinj/wallet/SendRequest;->aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_0

    const-string v1, "set"

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "aesKey"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 263
    iget-object v1, p0, Lorg/bitcoinj/wallet/SendRequest;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

    const-string v2, "coinSelector"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 264
    iget-boolean v1, p0, Lorg/bitcoinj/wallet/SendRequest;->shuffleOutputs:Z

    const-string v2, "shuffleOutputs"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 265
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
