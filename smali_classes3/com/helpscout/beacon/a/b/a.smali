.class public final synthetic Lcom/helpscout/beacon/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/helpscout/beacon/a/c/c/b;->values()[Lcom/helpscout/beacon/a/c/c/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpscout/beacon/a/b/a;->a:[I

    sget-object v1, Lcom/helpscout/beacon/a/c/c/b;->CACHE:Lcom/helpscout/beacon/a/c/c/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/a/c/c/b;->DEFAULT:Lcom/helpscout/beacon/a/c/c/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/helpscout/beacon/a/c/c/b;->REMOTE_ONLY:Lcom/helpscout/beacon/a/c/c/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
