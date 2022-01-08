.class public final enum Lio/sentry/SentryItemType;
.super Ljava/lang/Enum;
.source "SentryItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SentryItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SentryItemType;

.field public static final enum Attachment:Lio/sentry/SentryItemType;

.field public static final enum Event:Lio/sentry/SentryItemType;

.field public static final enum Session:Lio/sentry/SentryItemType;

.field public static final enum Transaction:Lio/sentry/SentryItemType;

.field public static final enum Unknown:Lio/sentry/SentryItemType;

.field public static final enum UserFeedback:Lio/sentry/SentryItemType;


# instance fields
.field private final itemType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v1, 0x0

    const-string v2, "Session"

    const-string v3, "session"

    invoke-direct {v0, v2, v1, v3}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    .line 8
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v2, 0x1

    const-string v3, "Event"

    const-string v4, "event"

    invoke-direct {v0, v3, v2, v4}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    .line 9
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v3, 0x2

    const-string v4, "UserFeedback"

    const-string v5, "user_report"

    invoke-direct {v0, v4, v3, v5}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    .line 10
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v4, 0x3

    const-string v5, "Attachment"

    const-string v6, "attachment"

    invoke-direct {v0, v5, v4, v6}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    .line 11
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v5, 0x4

    const-string v6, "Transaction"

    const-string v7, "transaction"

    invoke-direct {v0, v6, v5, v7}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    .line 12
    new-instance v0, Lio/sentry/SentryItemType;

    const/4 v6, 0x5

    const-string v7, "Unknown"

    const-string v8, "__unknown__"

    invoke-direct {v0, v7, v6, v8}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Unknown:Lio/sentry/SentryItemType;

    const/4 v7, 0x6

    new-array v7, v7, [Lio/sentry/SentryItemType;

    .line 5
    sget-object v8, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    aput-object v8, v7, v1

    sget-object v1, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    aput-object v1, v7, v2

    sget-object v1, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    aput-object v1, v7, v3

    sget-object v1, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    aput-object v1, v7, v4

    sget-object v1, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lio/sentry/SentryItemType;->$VALUES:[Lio/sentry/SentryItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lio/sentry/SentryItemType;->itemType:Ljava/lang/String;

    return-void
.end method

.method public static resolve(Ljava/lang/Object;)Lio/sentry/SentryItemType;
    .locals 1

    .line 17
    instance-of v0, p0, Lio/sentry/SentryEvent;

    if-eqz v0, :cond_0

    .line 18
    sget-object p0, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    return-object p0

    .line 19
    :cond_0
    instance-of v0, p0, Lio/sentry/SentryTransaction;

    if-eqz v0, :cond_1

    .line 20
    sget-object p0, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    return-object p0

    .line 21
    :cond_1
    instance-of p0, p0, Lio/sentry/Session;

    if-eqz p0, :cond_2

    .line 22
    sget-object p0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    return-object p0

    .line 24
    :cond_2
    sget-object p0, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SentryItemType;
    .locals 1

    .line 5
    const-class v0, Lio/sentry/SentryItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryItemType;

    return-object p0
.end method

.method public static values()[Lio/sentry/SentryItemType;
    .locals 1

    .line 5
    sget-object v0, Lio/sentry/SentryItemType;->$VALUES:[Lio/sentry/SentryItemType;

    invoke-virtual {v0}, [Lio/sentry/SentryItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SentryItemType;

    return-object v0
.end method


# virtual methods
.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/sentry/SentryItemType;->itemType:Ljava/lang/String;

    return-object v0
.end method
