.class public Lorg/bitcoinj/wallet/DefaultRiskAnalysis;
.super Ljava/lang/Object;
.source "DefaultRiskAnalysis.java"

# interfaces
.implements Lorg/bitcoinj/wallet/RiskAnalysis;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/DefaultRiskAnalysis$Analyzer;,
        Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;
    }
.end annotation


# static fields
.field public static FACTORY:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$Analyzer;

.field public static final MIN_ANALYSIS_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected analyzed:Z

.field protected final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field protected nonFinal:Lorg/bitcoinj/core/Transaction;

.field private nonStandard:Lorg/bitcoinj/core/Transaction;

.field protected final tx:Lorg/bitcoinj/core/Transaction;

.field protected final wallet:Lorg/bitcoinj/wallet/Wallet;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->log:Lorg/slf4j/Logger;

    .line 52
    sget-object v0, Lorg/bitcoinj/core/Transaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    sput-object v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->MIN_ANALYSIS_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    .line 262
    new-instance v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$Analyzer;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$Analyzer;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->FACTORY:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$Analyzer;

    return-void
.end method

.method private constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/Wallet;",
            "Lorg/bitcoinj/core/Transaction;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->tx:Lorg/bitcoinj/core/Transaction;

    .line 64
    iput-object p3, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->dependencies:Ljava/util/List;

    .line 65
    iput-object p1, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->wallet:Lorg/bitcoinj/wallet/Wallet;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Ljava/util/List;Lorg/bitcoinj/wallet/DefaultRiskAnalysis$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Ljava/util/List;)V

    return-void
.end method

.method private analyzeIsFinal()Lorg/bitcoinj/wallet/RiskAnalysis$Result;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getSource()Lorg/bitcoinj/core/TransactionConfidence$Source;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    if-ne v0, v1, :cond_0

    .line 84
    sget-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->OK:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->isOptInFullRBF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->tx:Lorg/bitcoinj/core/Transaction;

    iput-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->nonFinal:Lorg/bitcoinj/core/Transaction;

    .line 89
    sget-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->NON_FINAL:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-object v0

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->hasRelativeLockTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->tx:Lorg/bitcoinj/core/Transaction;

    iput-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->nonFinal:Lorg/bitcoinj/core/Transaction;

    .line 96
    sget-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->NON_FINAL:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-object v0

    .line 99
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->wallet:Lorg/bitcoinj/wallet/Wallet;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_3
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenHeight()I

    move-result v0

    .line 103
    iget-object v1, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenTimeSecs()J

    move-result-wide v1

    add-int/lit8 v0, v0, 0x1

    .line 108
    iget-object v3, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v3, v0, v1, v2}, Lorg/bitcoinj/core/Transaction;->isFinal(IJ)Z

    move-result v3

    if-nez v3, :cond_4

    .line 109
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->tx:Lorg/bitcoinj/core/Transaction;

    iput-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->nonFinal:Lorg/bitcoinj/core/Transaction;

    .line 110
    sget-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->NON_FINAL:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-object v0

    .line 112
    :cond_4
    iget-object v3, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->dependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/Transaction;

    .line 113
    invoke-virtual {v4, v0, v1, v2}, Lorg/bitcoinj/core/Transaction;->isFinal(IJ)Z

    move-result v5

    if-nez v5, :cond_5

    .line 114
    iput-object v4, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->nonFinal:Lorg/bitcoinj/core/Transaction;

    .line 115
    sget-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->NON_FINAL:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-object v0

    .line 119
    :cond_6
    sget-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->OK:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-object v0
.end method

.method private analyzeIsStandard()Lorg/bitcoinj/wallet/RiskAnalysis$Result;
    .locals 4

    .line 211
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->wallet:Lorg/bitcoinj/wallet/Wallet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getNetworkParameters()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.bitcoin.production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    sget-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->OK:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-static {v0}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->isStandard(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    move-result-object v0

    .line 215
    sget-object v1, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    if-eq v0, v1, :cond_1

    .line 216
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->tx:Lorg/bitcoinj/core/Transaction;

    iput-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->nonStandard:Lorg/bitcoinj/core/Transaction;

    .line 217
    sget-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->NON_STANDARD:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-object v0

    .line 220
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Transaction;

    .line 221
    invoke-static {v1}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->isStandard(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    move-result-object v2

    .line 222
    sget-object v3, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    if-eq v2, v3, :cond_2

    .line 223
    iput-object v1, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->nonStandard:Lorg/bitcoinj/core/Transaction;

    .line 224
    sget-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->NON_STANDARD:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-object v0

    .line 228
    :cond_3
    sget-object v0, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->OK:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    return-object v0
.end method

.method public static isInputStandard(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;
    .locals 2

    .line 186
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->getChunks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    .line 187
    iget-object v1, v0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptChunk;->isShortestPossiblePushData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    sget-object p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->SHORTEST_POSSIBLE_PUSHDATA:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object p0

    .line 189
    :cond_1
    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptChunk;->isPushData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    :try_start_0
    iget-object v1, v0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-static {v1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->decodeFromDER([B)Lorg/bitcoinj/core/ECKey$ECDSASignature;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 198
    iget-object v0, v0, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-static {v0}, Lorg/bitcoinj/crypto/TransactionSignature;->isEncodingCanonical([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    sget-object p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->SIGNATURE_CANONICAL_ENCODING:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object p0

    .line 200
    :cond_2
    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey$ECDSASignature;->isCanonical()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    sget-object p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->SIGNATURE_CANONICAL_ENCODING:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object p0

    .line 205
    :cond_3
    sget-object p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object p0
.end method

.method public static isOutputStandard(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;
    .locals 2

    .line 175
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->MIN_ANALYSIS_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v0

    if-gez v0, :cond_0

    .line 176
    sget-object p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->DUST:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object p0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/script/Script;->getChunks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/script/ScriptChunk;

    .line 178
    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptChunk;->isPushData()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bitcoinj/script/ScriptChunk;->isShortestPossiblePushData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    sget-object p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->SHORTEST_POSSIBLE_PUSHDATA:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object p0

    .line 181
    :cond_2
    sget-object p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object p0
.end method

.method public static isStandard(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;
    .locals 5

    .line 143
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_2

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 150
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionOutput;

    .line 151
    invoke-static {v3}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->isOutputStandard(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    move-result-object v3

    .line 152
    sget-object v4, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    if-eq v3, v4, :cond_1

    .line 153
    sget-object p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->log:Lorg/slf4j/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TX considered non-standard due to output {} violating rule {}"

    invoke-interface {p0, v1, v0, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object p0

    .line 159
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 160
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionInput;

    .line 161
    invoke-static {v0}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->isInputStandard(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    move-result-object v0

    .line 162
    sget-object v2, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    if-eq v0, v2, :cond_3

    .line 163
    sget-object p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->log:Lorg/slf4j/Logger;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TX considered non-standard due to input {} violating rule {}"

    invoke-interface {p0, v2, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    :cond_4
    sget-object p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->NONE:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object p0

    .line 144
    :cond_5
    :goto_2
    sget-object v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Transaction;->getVersion()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "TX considered non-standard due to unknown version number {}"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    sget-object p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;->VERSION:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$RuleViolation;

    return-object p0
.end method


# virtual methods
.method public analyze()Lorg/bitcoinj/wallet/RiskAnalysis$Result;
    .locals 2

    .line 70
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->analyzed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 71
    iput-boolean v1, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->analyzed:Z

    .line 73
    invoke-direct {p0}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->analyzeIsFinal()Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v1, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->OK:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 77
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->analyzeIsStandard()Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    move-result-object v0

    return-object v0
.end method

.method public getNonFinal()Lorg/bitcoinj/core/Transaction;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->nonFinal:Lorg/bitcoinj/core/Transaction;

    return-object v0
.end method

.method public getNonStandard()Lorg/bitcoinj/core/Transaction;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->nonStandard:Lorg/bitcoinj/core/Transaction;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->analyzed:Z

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending risk analysis for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->nonFinal:Lorg/bitcoinj/core/Transaction;

    if-eqz v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Risky due to non-finality of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->nonFinal:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 249
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->nonStandard:Lorg/bitcoinj/core/Transaction;

    if-eqz v0, :cond_2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Risky due to non-standard tx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->nonStandard:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "Non-risky"

    return-object v0
.end method
