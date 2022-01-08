.class final enum Lio/sentry/transport/RateLimiter$DataCategory;
.super Ljava/lang/Enum;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DataCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/transport/RateLimiter$DataCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum All:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Attachment:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Default:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Error:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Security:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Session:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Transaction:Lio/sentry/transport/RateLimiter$DataCategory;

.field public static final enum Unknown:Lio/sentry/transport/RateLimiter$DataCategory;


# instance fields
.field private final category:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 24
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const/4 v1, 0x0

    const-string v2, "All"

    const-string v3, "__all__"

    invoke-direct {v0, v2, v1, v3}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->All:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 25
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const/4 v2, 0x1

    const-string v3, "Default"

    const-string v4, "default"

    invoke-direct {v0, v3, v2, v4}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Default:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 26
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const/4 v3, 0x2

    const-string v4, "Error"

    const-string v5, "error"

    invoke-direct {v0, v4, v3, v5}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Error:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 27
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const/4 v4, 0x3

    const-string v5, "Session"

    const-string v6, "session"

    invoke-direct {v0, v5, v4, v6}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Session:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 28
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const/4 v5, 0x4

    const-string v6, "Attachment"

    const-string v7, "attachment"

    invoke-direct {v0, v6, v5, v7}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Attachment:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 29
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const/4 v6, 0x5

    const-string v7, "Transaction"

    const-string v8, "transaction"

    invoke-direct {v0, v7, v6, v8}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Transaction:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 30
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const/4 v7, 0x6

    const-string v8, "Security"

    const-string v9, "security"

    invoke-direct {v0, v8, v7, v9}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Security:Lio/sentry/transport/RateLimiter$DataCategory;

    .line 31
    new-instance v0, Lio/sentry/transport/RateLimiter$DataCategory;

    const/4 v8, 0x7

    const-string v9, "Unknown"

    const-string v10, "unknown"

    invoke-direct {v0, v9, v8, v10}, Lio/sentry/transport/RateLimiter$DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->Unknown:Lio/sentry/transport/RateLimiter$DataCategory;

    const/16 v9, 0x8

    new-array v9, v9, [Lio/sentry/transport/RateLimiter$DataCategory;

    .line 23
    sget-object v10, Lio/sentry/transport/RateLimiter$DataCategory;->All:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v10, v9, v1

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Default:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v9, v2

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Error:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v9, v3

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Session:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v9, v4

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Attachment:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v9, v5

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Transaction:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v9, v6

    sget-object v1, Lio/sentry/transport/RateLimiter$DataCategory;->Security:Lio/sentry/transport/RateLimiter$DataCategory;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lio/sentry/transport/RateLimiter$DataCategory;->$VALUES:[Lio/sentry/transport/RateLimiter$DataCategory;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lio/sentry/transport/RateLimiter$DataCategory;->category:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/transport/RateLimiter$DataCategory;
    .locals 1

    .line 23
    const-class v0, Lio/sentry/transport/RateLimiter$DataCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/transport/RateLimiter$DataCategory;

    return-object p0
.end method

.method public static values()[Lio/sentry/transport/RateLimiter$DataCategory;
    .locals 1

    .line 23
    sget-object v0, Lio/sentry/transport/RateLimiter$DataCategory;->$VALUES:[Lio/sentry/transport/RateLimiter$DataCategory;

    invoke-virtual {v0}, [Lio/sentry/transport/RateLimiter$DataCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/transport/RateLimiter$DataCategory;

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/sentry/transport/RateLimiter$DataCategory;->category:Ljava/lang/String;

    return-object v0
.end method
