.class Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;
.super Ljava/lang/Object;
.source "FullPrunedBlockChain.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/FullPrunedBlockChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Verifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/bitcoinj/core/VerificationException;",
        ">;"
    }
.end annotation


# instance fields
.field final prevOutScripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/Script;",
            ">;"
        }
    .end annotation
.end field

.field final tx:Lorg/bitcoinj/core/Transaction;

.field final verifyFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bitcoinj/script/Script$VerifyFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Transaction;Ljava/util/List;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/Script;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/script/Script$VerifyFlag;",
            ">;)V"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;->tx:Lorg/bitcoinj/core/Transaction;

    .line 162
    iput-object p2, p0, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;->prevOutScripts:Ljava/util/List;

    .line 163
    iput-object p3, p0, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;->verifyFlags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 155
    invoke-virtual {p0}, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;->call()Lorg/bitcoinj/core/VerificationException;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/bitcoinj/core/VerificationException;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;->prevOutScripts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 171
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v2, p0, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionInput;

    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v3

    iget-object v4, p0, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;->tx:Lorg/bitcoinj/core/Transaction;

    int-to-long v5, v1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/bitcoinj/script/Script;

    iget-object v8, p0, Lorg/bitcoinj/core/FullPrunedBlockChain$Verifier;->verifyFlags:Ljava/util/Set;

    invoke-virtual/range {v3 .. v8}, Lorg/bitcoinj/script/Script;->correctlySpends(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;Ljava/util/Set;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    return-object v0
.end method
