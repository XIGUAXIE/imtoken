.class public Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$LRUCache;
.super Ljava/util/LinkedHashMap;
.source "LevelDBFullPrunedBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LRUCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/nio/ByteBuffer;",
        "Lorg/bitcoinj/core/UTXO;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private capacity:I

.field final synthetic this$0:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;IF)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$LRUCache;->this$0:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;

    const/4 p1, 0x1

    .line 130
    invoke-direct {p0, p2, p3, p1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 131
    iput p2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$LRUCache;->capacity:I

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/nio/ByteBuffer;",
            "Lorg/bitcoinj/core/UTXO;",
            ">;)Z"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$LRUCache;->size()I

    move-result p1

    iget v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$LRUCache;->capacity:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
