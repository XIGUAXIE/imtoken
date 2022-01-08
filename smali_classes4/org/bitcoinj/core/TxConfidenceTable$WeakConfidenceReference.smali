.class Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;
.super Ljava/lang/ref/WeakReference;
.source "TxConfidenceTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/TxConfidenceTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakConfidenceReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lorg/bitcoinj/core/TransactionConfidence;",
        ">;"
    }
.end annotation


# instance fields
.field public hash:Lorg/bitcoinj/core/Sha256Hash;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/TransactionConfidence;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/TransactionConfidence;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lorg/bitcoinj/core/TransactionConfidence;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 46
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getTransactionHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-void
.end method
