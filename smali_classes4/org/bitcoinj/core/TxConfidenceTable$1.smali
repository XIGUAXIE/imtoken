.class Lorg/bitcoinj/core/TxConfidenceTable$1;
.super Ljava/util/LinkedHashMap;
.source "TxConfidenceTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/TxConfidenceTable;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/bitcoinj/core/Sha256Hash;",
        "Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/TxConfidenceTable;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/TxConfidenceTable;I)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/bitcoinj/core/TxConfidenceTable$1;->this$0:Lorg/bitcoinj/core/TxConfidenceTable;

    iput p2, p0, Lorg/bitcoinj/core/TxConfidenceTable$1;->val$size:I

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/TxConfidenceTable$WeakConfidenceReference;",
            ">;)Z"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/bitcoinj/core/TxConfidenceTable$1;->size()I

    move-result p1

    iget v0, p0, Lorg/bitcoinj/core/TxConfidenceTable$1;->val$size:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
