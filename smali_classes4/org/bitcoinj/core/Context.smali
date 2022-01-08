.class public Lorg/bitcoinj/core/Context;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field private static isStrictMode:Z

.field private static volatile lastConstructed:Lorg/bitcoinj/core/Context;

.field private static final log:Lorg/slf4j/Logger;

.field private static final slot:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/bitcoinj/core/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private confidenceTable:Lorg/bitcoinj/core/TxConfidenceTable;

.field private ensureMinRequiredFee:Z

.field private eventHorizon:I

.field private feePerKb:Lorg/bitcoinj/core/Coin;

.field private params:Lorg/bitcoinj/core/NetworkParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/bitcoinj/core/Context;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Context;->log:Lorg/slf4j/Logger;

    .line 82
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/bitcoinj/core/Context;->slot:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 46
    iput v0, p0, Lorg/bitcoinj/core/Context;->eventHorizon:I

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lorg/bitcoinj/core/Context;->ensureMinRequiredFee:Z

    .line 48
    sget-object v0, Lorg/bitcoinj/core/Transaction;->DEFAULT_TX_FEE:Lorg/bitcoinj/core/Coin;

    iput-object v0, p0, Lorg/bitcoinj/core/Context;->feePerKb:Lorg/bitcoinj/core/Coin;

    .line 57
    sget-object v0, Lorg/bitcoinj/core/Context;->log:Lorg/slf4j/Logger;

    const-string v1, "Creating bitcoinj {} context."

    const-string v2, "0.14.7"

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    new-instance v0, Lorg/bitcoinj/core/TxConfidenceTable;

    invoke-direct {v0}, Lorg/bitcoinj/core/TxConfidenceTable;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/Context;->confidenceTable:Lorg/bitcoinj/core/TxConfidenceTable;

    .line 59
    iput-object p1, p0, Lorg/bitcoinj/core/Context;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 60
    sput-object p0, Lorg/bitcoinj/core/Context;->lastConstructed:Lorg/bitcoinj/core/Context;

    .line 62
    sget-object p1, Lorg/bitcoinj/core/Context;->slot:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;ILorg/bitcoinj/core/Coin;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Context;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 75
    iput p2, p0, Lorg/bitcoinj/core/Context;->eventHorizon:I

    .line 76
    iput-object p3, p0, Lorg/bitcoinj/core/Context;->feePerKb:Lorg/bitcoinj/core/Coin;

    .line 77
    iput-boolean p4, p0, Lorg/bitcoinj/core/Context;->ensureMinRequiredFee:Z

    return-void
.end method

.method public static enableStrictMode()V
    .locals 1

    const/4 v0, 0x1

    .line 123
    sput-boolean v0, Lorg/bitcoinj/core/Context;->isStrictMode:Z

    return-void
.end method

.method public static get()Lorg/bitcoinj/core/Context;
    .locals 3

    .line 95
    sget-object v0, Lorg/bitcoinj/core/Context;->slot:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Context;

    if-nez v0, :cond_2

    .line 97
    sget-boolean v0, Lorg/bitcoinj/core/Context;->isStrictMode:Z

    const-string v1, "You should use Context.propagate() or a ContextPropagatingThreadFactory."

    if-nez v0, :cond_1

    .line 102
    sget-object v0, Lorg/bitcoinj/core/Context;->lastConstructed:Lorg/bitcoinj/core/Context;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lorg/bitcoinj/core/Context;->slot:Ljava/lang/ThreadLocal;

    sget-object v2, Lorg/bitcoinj/core/Context;->lastConstructed:Lorg/bitcoinj/core/Context;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 105
    sget-object v0, Lorg/bitcoinj/core/Context;->log:Lorg/slf4j/Logger;

    const-string v2, "Performing thread fixup: you are accessing bitcoinj via a thread that has not had any context set on it."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 106
    sget-object v0, Lorg/bitcoinj/core/Context;->log:Lorg/slf4j/Logger;

    const-string v2, "This error has been corrected for, but doing this makes your app less robust."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 107
    sget-object v0, Lorg/bitcoinj/core/Context;->log:Lorg/slf4j/Logger;

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lorg/bitcoinj/core/Context;->log:Lorg/slf4j/Logger;

    const-string v1, "Please refer to the user guide for more information about this."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lorg/bitcoinj/core/Context;->log:Lorg/slf4j/Logger;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Thread name is {}."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    sget-object v0, Lorg/bitcoinj/core/Context;->lastConstructed:Lorg/bitcoinj/core/Context;

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must construct a Context object before using bitcoinj!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    sget-object v0, Lorg/bitcoinj/core/Context;->log:Lorg/slf4j/Logger;

    const-string v2, "Thread is missing a bitcoinj context."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lorg/bitcoinj/core/Context;->log:Lorg/slf4j/Logger;

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "missing context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public static getOrCreate(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Context;
    .locals 4

    .line 130
    :try_start_0
    invoke-static {}, Lorg/bitcoinj/core/Context;->get()Lorg/bitcoinj/core/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    invoke-virtual {v0}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    if-ne v1, p0, :cond_0

    return-object v0

    .line 137
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Context does not match implicit network params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " vs "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :catch_0
    sget-object v0, Lorg/bitcoinj/core/Context;->log:Lorg/slf4j/Logger;

    const-string v1, "Implicitly creating context. This is a migration step and this message will eventually go away."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 133
    new-instance v0, Lorg/bitcoinj/core/Context;

    invoke-direct {v0, p0}, Lorg/bitcoinj/core/Context;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    return-object v0
.end method

.method public static propagate(Lorg/bitcoinj/core/Context;)V
    .locals 1

    .line 148
    sget-object v0, Lorg/bitcoinj/core/Context;->slot:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getConfidenceTable()Lorg/bitcoinj/core/TxConfidenceTable;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/bitcoinj/core/Context;->confidenceTable:Lorg/bitcoinj/core/TxConfidenceTable;

    return-object v0
.end method

.method public getEventHorizon()I
    .locals 1

    .line 176
    iget v0, p0, Lorg/bitcoinj/core/Context;->eventHorizon:I

    return v0
.end method

.method public getFeePerKb()Lorg/bitcoinj/core/Coin;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/bitcoinj/core/Context;->feePerKb:Lorg/bitcoinj/core/Coin;

    return-object v0
.end method

.method public getParams()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/bitcoinj/core/Context;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method public isEnsureMinRequiredFee()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lorg/bitcoinj/core/Context;->ensureMinRequiredFee:Z

    return v0
.end method
