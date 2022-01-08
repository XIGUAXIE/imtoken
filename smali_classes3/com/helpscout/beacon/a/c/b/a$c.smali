.class public final enum Lcom/helpscout/beacon/a/c/b/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/a/c/b/a$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/a/c/b/a$c;

.field public static final enum AWAITING_AGENT:Lcom/helpscout/beacon/a/c/b/a$c;

.field public static final enum CREATED:Lcom/helpscout/beacon/a/c/b/a$c;

.field public static final enum FINISHED:Lcom/helpscout/beacon/a/c/b/a$c;

.field public static final enum IDLE:Lcom/helpscout/beacon/a/c/b/a$c;

.field public static final enum INITIAL:Lcom/helpscout/beacon/a/c/b/a$c;

.field public static final enum MISSING_EMAIL:Lcom/helpscout/beacon/a/c/b/a$c;

.field public static final enum STARTED:Lcom/helpscout/beacon/a/c/b/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/helpscout/beacon/a/c/b/a$c;

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$c;

    const/4 v2, 0x0

    const-string v3, "IDLE"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->IDLE:Lcom/helpscout/beacon/a/c/b/a$c;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$c;

    const/4 v2, 0x1

    const-string v3, "INITIAL"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->INITIAL:Lcom/helpscout/beacon/a/c/b/a$c;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$c;

    const/4 v2, 0x2

    const-string v3, "MISSING_EMAIL"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->MISSING_EMAIL:Lcom/helpscout/beacon/a/c/b/a$c;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$c;

    const/4 v2, 0x3

    const-string v3, "CREATED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->CREATED:Lcom/helpscout/beacon/a/c/b/a$c;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$c;

    const/4 v2, 0x4

    const-string v3, "AWAITING_AGENT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->AWAITING_AGENT:Lcom/helpscout/beacon/a/c/b/a$c;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$c;

    const/4 v2, 0x5

    const-string v3, "STARTED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->STARTED:Lcom/helpscout/beacon/a/c/b/a$c;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$c;

    const/4 v2, 0x6

    const-string v3, "FINISHED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/a/c/b/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->FINISHED:Lcom/helpscout/beacon/a/c/b/a$c;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/a/c/b/a$c;->$VALUES:[Lcom/helpscout/beacon/a/c/b/a$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/a/c/b/a$c;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/a/c/b/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/a/c/b/a$c;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/a/c/b/a$c;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/a/c/b/a$c;->$VALUES:[Lcom/helpscout/beacon/a/c/b/a$c;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/a/c/b/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/a/c/b/a$c;

    return-object v0
.end method
