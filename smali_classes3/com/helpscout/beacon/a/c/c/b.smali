.class public final enum Lcom/helpscout/beacon/a/c/c/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/a/c/c/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/a/c/c/b;

.field public static final enum CACHE:Lcom/helpscout/beacon/a/c/c/b;

.field public static final enum DEFAULT:Lcom/helpscout/beacon/a/c/c/b;

.field public static final enum REMOTE_ONLY:Lcom/helpscout/beacon/a/c/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/helpscout/beacon/a/c/c/b;

    new-instance v1, Lcom/helpscout/beacon/a/c/c/b;

    const/4 v2, 0x0

    const-string v3, "CACHE"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/c/b;->CACHE:Lcom/helpscout/beacon/a/c/c/b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/c/b;

    const/4 v2, 0x1

    const-string v3, "REMOTE_ONLY"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/c/b;->REMOTE_ONLY:Lcom/helpscout/beacon/a/c/c/b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/c/b;

    const/4 v2, 0x2

    const-string v3, "DEFAULT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/c/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/c/b;->DEFAULT:Lcom/helpscout/beacon/a/c/c/b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/a/c/c/b;->$VALUES:[Lcom/helpscout/beacon/a/c/c/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/a/c/c/b;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/a/c/c/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/a/c/c/b;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/a/c/c/b;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/a/c/c/b;->$VALUES:[Lcom/helpscout/beacon/a/c/c/b;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/a/c/c/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/a/c/c/b;

    return-object v0
.end method
