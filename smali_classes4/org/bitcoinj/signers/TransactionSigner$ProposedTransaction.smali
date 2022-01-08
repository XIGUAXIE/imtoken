.class public Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;
.super Ljava/lang/Object;
.source "TransactionSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/signers/TransactionSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProposedTransaction"
.end annotation


# instance fields
.field public final keyPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/script/Script;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;>;"
        }
    .end annotation
.end field

.field public final partialTx:Lorg/bitcoinj/core/Transaction;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Transaction;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;->partialTx:Lorg/bitcoinj/core/Transaction;

    .line 57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;->keyPaths:Ljava/util/Map;

    return-void
.end method
