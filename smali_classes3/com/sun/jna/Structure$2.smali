.class final Lcom/sun/jna/Structure$2;
.super Ljava/lang/ThreadLocal;
.source "Structure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Structure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/Set<",
        "Lcom/sun/jna/Structure;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 474
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 474
    invoke-virtual {p0}, Lcom/sun/jna/Structure$2;->initialValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized initialValue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sun/jna/Structure;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 477
    :try_start_0
    new-instance v0, Lcom/sun/jna/Structure$StructureSet;

    invoke-direct {v0}, Lcom/sun/jna/Structure$StructureSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
