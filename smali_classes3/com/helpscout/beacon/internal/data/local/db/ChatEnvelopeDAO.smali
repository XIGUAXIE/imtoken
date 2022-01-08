.class public interface abstract Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0004H\'\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;",
        "",
        "",
        "chatId",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;",
        "loadChatDB",
        "(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;",
        "conversationDB",
        "",
        "insert",
        "(Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;)V",
        "",
        "count",
        "updateMessageCount",
        "(ILjava/lang/String;)V",
        "",
        "agentId",
        "updateAgent",
        "(JLjava/lang/String;)V",
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
.method public abstract insert(Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;)V
.end method

.method public abstract loadChatDB(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;
.end method

.method public abstract updateAgent(JLjava/lang/String;)V
.end method

.method public abstract updateMessageCount(ILjava/lang/String;)V
.end method
