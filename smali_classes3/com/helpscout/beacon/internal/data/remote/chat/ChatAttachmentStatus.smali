.class public final enum Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Uploading",
        "Downloading",
        "Finished",
        "Failed",
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
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

.field public static final enum Downloading:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

.field public static final enum Failed:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

.field public static final enum Finished:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

.field public static final enum Uploading:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    const/4 v2, 0x0

    const-string v3, "Uploading"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->Uploading:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    const/4 v2, 0x1

    const-string v3, "Downloading"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->Downloading:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    const/4 v2, 0x2

    const-string v3, "Finished"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->Finished:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    const/4 v2, 0x3

    const-string v3, "Failed"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->Failed:Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->$VALUES:[Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->$VALUES:[Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/internal/data/remote/chat/ChatAttachmentStatus;

    return-object v0
.end method
