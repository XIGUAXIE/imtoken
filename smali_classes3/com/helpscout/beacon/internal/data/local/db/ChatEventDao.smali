.class public interface abstract Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;,
        Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008g\u0018\u00002\u00020\u0001:\u0001<J\u001b\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\'\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001b\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001b\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\nJ;\u0010\u0018\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0016H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00032\u0006\u0010\u001a\u001a\u00020\u0013H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001b\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u000bH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001b\u0010\"\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u000bH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010 J\u001b\u0010#\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u000bH\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010 J%\u0010&\u001a\u00020\u001e2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010%\u001a\u00020$H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008&\u0010\'J#\u0010(\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0013H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010)J+\u0010,\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010-J#\u0010/\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u0016H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u00100J%\u00101\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0013H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00081\u00102JO\u00108\u001a\u00020\u001e2\u0006\u00103\u001a\u00020\u00072\u0008\u00104\u001a\u0004\u0018\u00010\u00072\u0006\u00105\u001a\u00020$2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010+\u001a\u00020\u00072\u0008\u0008\u0002\u00107\u001a\u000206H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u00109J\u001b\u0010:\u001a\u00020\u001e2\u0006\u0010\u000e\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008:\u0010\nJ\u0013\u0010;\u001a\u00020\u001eH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008;\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006="
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;",
        "",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
        "observeChatEventsWithAuthor",
        "()Landroidx/lifecycle/LiveData;",
        "",
        "eventId",
        "getEventWithAuthor",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
        "loadAllChatEvents",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "id",
        "",
        "countWithId",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
        "type",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
        "received",
        "sent",
        "",
        "systemAuthorId",
        "countSendOrReceivedMessagesNotFromHelpbot",
        "(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "status",
        "loadChatEventsByStatus",
        "(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "event",
        "",
        "insert",
        "(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "entity",
        "update",
        "upsert",
        "Lorg/threeten/bp/OffsetDateTime;",
        "updatedAt",
        "updateLastModified",
        "(Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateStatus",
        "(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "serverEventId",
        "oldId",
        "updateStatusAndId",
        "(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "authorId",
        "updateAuthor",
        "(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateAuthorForEventsPending",
        "(JLcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "newId",
        "body",
        "createdAt",
        "",
        "isUpdatingATypingEvent",
        "updateIsTypingEvent",
        "(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteEvent",
        "deleteAllRows",
        "EventFull",
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
.method public abstract countSendOrReceivedMessagesNotFromHelpbot(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract countWithId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract deleteAllRows(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract deleteEvent(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getEventWithAuthor(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract loadAllChatEvents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract loadChatEventsByStatus(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract observeChatEventsWithAuthor()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract updateAuthor(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract updateAuthorForEventsPending(JLcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract updateIsTypingEvent(Ljava/lang/String;Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/OffsetDateTime;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract updateLastModified(Ljava/lang/String;Lorg/threeten/bp/OffsetDateTime;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/OffsetDateTime;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract updateStatus(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract updateStatusAndId(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract upsert(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
