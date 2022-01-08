.class public interface abstract Lcom/helpscout/beacon/internal/domain/model/BeaconNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/BeaconNotification;",
        "",
        "Companion",
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
.field public static final ACTION_AGENT_REPLY_CHAT:Ljava/lang/String; = "BEACON_CHAT_AGENT_REPLY"

.field public static final ACTION_AGENT_REPLY_CONVERSATION:Ljava/lang/String; = "BEACON_THREAD_REPLY"

.field public static final ACTION_CHAT_ENDED:Ljava/lang/String; = "BEACON_CHAT_ENDED"

.field public static final ACTION_CHAT_INACTIVITY:Ljava/lang/String; = "BEACON_CHAT_INACTIVITY"

.field public static final Companion:Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;

.field public static final KEY_ACTION:Ljava/lang/String; = "twi_action"

.field public static final KEY_AGENT_NAME:Ljava/lang/String; = "agentDisplayName"

.field public static final KEY_AGENT_PHOTO_URL:Ljava/lang/String; = "agentPhotoUrl"

.field public static final KEY_BODY:Ljava/lang/String; = "twi_body"

.field public static final KEY_CONVERSATION_ID:Ljava/lang/String; = "conversationId"

.field public static final KEY_MAILBOX_ID:Ljava/lang/String; = "mailboxId"

.field public static final KEY_TITLE:Ljava/lang/String; = "twi_title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;->$$INSTANCE:Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;

    sput-object v0, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification;->Companion:Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;

    return-void
.end method
