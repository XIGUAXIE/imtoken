.class Lorg/bitcoinj/store/MemoryBlockStore$1;
.super Ljava/util/LinkedHashMap;
.source "MemoryBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/store/MemoryBlockStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/bitcoinj/core/Sha256Hash;",
        "Lorg/bitcoinj/core/StoredBlock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/store/MemoryBlockStore;


# direct methods
.method constructor <init>(Lorg/bitcoinj/store/MemoryBlockStore;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lorg/bitcoinj/store/MemoryBlockStore$1;->this$0:Lorg/bitcoinj/store/MemoryBlockStore;

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
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;)Z"
        }
    .end annotation

    .line 31
    iget-object p1, p0, Lorg/bitcoinj/store/MemoryBlockStore$1;->this$0:Lorg/bitcoinj/store/MemoryBlockStore;

    invoke-static {p1}, Lorg/bitcoinj/store/MemoryBlockStore;->access$000(Lorg/bitcoinj/store/MemoryBlockStore;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    const/16 v0, 0x1388

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
