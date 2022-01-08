.class public final Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/domain/model/BeaconNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0008\u0011\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ#\u0010\u0006\u001a\u00020\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\u0008\u001a\u00020\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J#\u0010\t\u001a\u00020\u00052\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007R\u001c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\u00020\u00038\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u000f\u001a\u00020\u00038\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u00038\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u00038\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00038\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u000eR\u0016\u0010\u0014\u001a\u00020\u00038\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u000eR\u0016\u0010\u0015\u001a\u00020\u00038\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u000eR\u0016\u0010\u0016\u001a\u00020\u00038\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u000eR\u0016\u0010\u0017\u001a\u00020\u00038\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u000eR\u0016\u0010\u0018\u001a\u00020\u00038\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;",
        "",
        "",
        "",
        "data",
        "",
        "isBeaconNotification",
        "(Ljava/util/Map;)Z",
        "isConversation",
        "isChat",
        "",
        "SUPPORTED_CHAT_ACTIONS",
        "Ljava/util/Set;",
        "KEY_TITLE",
        "Ljava/lang/String;",
        "ACTION_CHAT_INACTIVITY",
        "KEY_CONVERSATION_ID",
        "ACTION_AGENT_REPLY_CHAT",
        "KEY_BODY",
        "KEY_ACTION",
        "ACTION_AGENT_REPLY_CONVERSATION",
        "KEY_MAILBOX_ID",
        "KEY_AGENT_NAME",
        "ACTION_CHAT_ENDED",
        "KEY_AGENT_PHOTO_URL",
        "<init>",
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


# static fields
.field static final synthetic $$INSTANCE:Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;

.field public static final ACTION_AGENT_REPLY_CHAT:Ljava/lang/String; = "BEACON_CHAT_AGENT_REPLY"

.field public static final ACTION_AGENT_REPLY_CONVERSATION:Ljava/lang/String; = "BEACON_THREAD_REPLY"

.field public static final ACTION_CHAT_ENDED:Ljava/lang/String; = "BEACON_CHAT_ENDED"

.field public static final ACTION_CHAT_INACTIVITY:Ljava/lang/String; = "BEACON_CHAT_INACTIVITY"

.field public static final KEY_ACTION:Ljava/lang/String; = "twi_action"

.field public static final KEY_AGENT_NAME:Ljava/lang/String; = "agentDisplayName"

.field public static final KEY_AGENT_PHOTO_URL:Ljava/lang/String; = "agentPhotoUrl"

.field public static final KEY_BODY:Ljava/lang/String; = "twi_body"

.field public static final KEY_CONVERSATION_ID:Ljava/lang/String; = "conversationId"

.field public static final KEY_MAILBOX_ID:Ljava/lang/String; = "mailboxId"

.field public static final KEY_TITLE:Ljava/lang/String; = "twi_title"

.field private static final SUPPORTED_CHAT_ACTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;->$$INSTANCE:Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;

    const-string v0, "BEACON_CHAT_INACTIVITY"

    const-string v1, "BEACON_CHAT_ENDED"

    const-string v2, "BEACON_CHAT_AGENT_REPLY"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;->SUPPORTED_CHAT_ACTIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isBeaconNotification(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;->isConversation(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;->isChat(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isChat(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "twi_action"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;->SUPPORTED_CHAT_ACTIONS:Ljava/util/Set;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isConversation(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "twi_action"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "BEACON_THREAD_REPLY"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
