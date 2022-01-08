.class public final enum Lcom/helpscout/beacon/a/c/b/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/a/c/b/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/a/c/b/a$b;

.field public static final enum AGENT_END_CHAT:Lcom/helpscout/beacon/a/c/b/a$b;

.field public static final enum NOT_FINISHED:Lcom/helpscout/beacon/a/c/b/a$b;

.field public static final enum STALE_UNASSIGNED:Lcom/helpscout/beacon/a/c/b/a$b;

.field public static final enum STALE_USER_ACTIVITY:Lcom/helpscout/beacon/a/c/b/a$b;

.field public static final enum USER_END_CHAT:Lcom/helpscout/beacon/a/c/b/a$b;

.field public static final enum USER_END_CHAT_UNASSIGNED:Lcom/helpscout/beacon/a/c/b/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/helpscout/beacon/a/c/b/a$b;

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$b;

    const/4 v2, 0x0

    const-string v3, "USER_END_CHAT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$b;->USER_END_CHAT:Lcom/helpscout/beacon/a/c/b/a$b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$b;

    const/4 v2, 0x1

    const-string v3, "USER_END_CHAT_UNASSIGNED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$b;->USER_END_CHAT_UNASSIGNED:Lcom/helpscout/beacon/a/c/b/a$b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$b;

    const/4 v2, 0x2

    const-string v3, "AGENT_END_CHAT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$b;->AGENT_END_CHAT:Lcom/helpscout/beacon/a/c/b/a$b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$b;

    const/4 v2, 0x3

    const-string v3, "STALE_UNASSIGNED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$b;->STALE_UNASSIGNED:Lcom/helpscout/beacon/a/c/b/a$b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$b;

    const/4 v2, 0x4

    const-string v3, "STALE_USER_ACTIVITY"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$b;->STALE_USER_ACTIVITY:Lcom/helpscout/beacon/a/c/b/a$b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$b;

    const/4 v2, 0x5

    const-string v3, "NOT_FINISHED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$b;->NOT_FINISHED:Lcom/helpscout/beacon/a/c/b/a$b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/a/c/b/a$b;->$VALUES:[Lcom/helpscout/beacon/a/c/b/a$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/a/c/b/a$b;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/a/c/b/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/a/c/b/a$b;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/a/c/b/a$b;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/a/c/b/a$b;->$VALUES:[Lcom/helpscout/beacon/a/c/b/a$b;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/a/c/b/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/a/c/b/a$b;

    return-object v0
.end method
