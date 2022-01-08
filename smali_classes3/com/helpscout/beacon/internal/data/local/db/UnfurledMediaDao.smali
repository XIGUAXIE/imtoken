.class public interface abstract Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008g\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0005H\'\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0005H\'\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u0017\u0010\r\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\tH\'\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;",
        "",
        "",
        "eventId",
        "",
        "Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;",
        "loadAllUnfurledMediaFromEvent",
        "(Ljava/lang/String;)Ljava/util/List;",
        "entity",
        "",
        "insert",
        "(Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)V",
        "update",
        "upsert",
        "deleteAll",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract deleteAll()V
.end method

.method public abstract insert(Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)V
.end method

.method public abstract loadAllUnfurledMediaFromEvent(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)V
.end method

.method public abstract upsert(Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDB;)V
.end method
