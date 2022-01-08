.class public final synthetic Lcom/helpscout/beacon/internal/presentation/ui/chat/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/helpscout/beacon/a/c/b/a$b;->values()[Lcom/helpscout/beacon/a/c/b/a$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/d;->a:[I

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$b;->STALE_UNASSIGNED:Lcom/helpscout/beacon/a/c/b/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$b;->USER_END_CHAT_UNASSIGNED:Lcom/helpscout/beacon/a/c/b/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$b;->USER_END_CHAT:Lcom/helpscout/beacon/a/c/b/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$b;->AGENT_END_CHAT:Lcom/helpscout/beacon/a/c/b/a$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
