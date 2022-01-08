.class public final enum Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "WAITING_CHAT_CREATION",
        "SUBJECT",
        "TO_UPLOAD",
        "SENT",
        "RECEIVED",
        "FAILED",
        "LOCAL_ONLY",
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
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

.field public static final enum FAILED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

.field public static final enum LOCAL_ONLY:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

.field public static final enum RECEIVED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

.field public static final enum SENT:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

.field public static final enum SUBJECT:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

.field public static final enum TO_UPLOAD:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

.field public static final enum WAITING_CHAT_CREATION:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    const/4 v2, 0x0

    const-string v3, "WAITING_CHAT_CREATION"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->WAITING_CHAT_CREATION:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    const/4 v2, 0x1

    const-string v3, "SUBJECT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->SUBJECT:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    const/4 v2, 0x2

    const-string v3, "TO_UPLOAD"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->TO_UPLOAD:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    const/4 v2, 0x3

    const-string v3, "SENT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->SENT:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    const/4 v2, 0x4

    const-string v3, "RECEIVED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->RECEIVED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    const/4 v2, 0x5

    const-string v3, "FAILED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->FAILED:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    const/4 v2, 0x6

    const-string v3, "LOCAL_ONLY"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->LOCAL_ONLY:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->$VALUES:[Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->$VALUES:[Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    return-object v0
.end method
