.class public Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;
.super Ljava/lang/Object;
.source "MemoryFullPrunedBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/store/MemoryFullPrunedBlockStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StoredBlockAndWasUndoableFlag"
.end annotation


# instance fields
.field public block:Lorg/bitcoinj/core/StoredBlock;

.field public wasUndoable:Z


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/StoredBlock;Z)V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;->block:Lorg/bitcoinj/core/StoredBlock;

    iput-boolean p2, p0, Lorg/bitcoinj/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;->wasUndoable:Z

    return-void
.end method
