.class public final enum Lcom/helpscout/beacon/model/FocusMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/model/FocusMode;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0003\u001a\u00020\u0002H\u0017\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/helpscout/beacon/model/FocusMode;",
        "",
        "",
        "toString",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SELF_SERVICE",
        "NEUTRAL",
        "ASK_FIRST",
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
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/model/FocusMode;

.field public static final enum ASK_FIRST:Lcom/helpscout/beacon/model/FocusMode;

.field public static final enum NEUTRAL:Lcom/helpscout/beacon/model/FocusMode;

.field public static final enum SELF_SERVICE:Lcom/helpscout/beacon/model/FocusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/helpscout/beacon/model/FocusMode;

    new-instance v1, Lcom/helpscout/beacon/model/FocusMode;

    const/4 v2, 0x0

    const-string v3, "SELF_SERVICE"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/model/FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/model/FocusMode;->SELF_SERVICE:Lcom/helpscout/beacon/model/FocusMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/model/FocusMode;

    const/4 v2, 0x1

    const-string v3, "NEUTRAL"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/model/FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/model/FocusMode;->NEUTRAL:Lcom/helpscout/beacon/model/FocusMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/model/FocusMode;

    const/4 v2, 0x2

    const-string v3, "ASK_FIRST"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/model/FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/model/FocusMode;->ASK_FIRST:Lcom/helpscout/beacon/model/FocusMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/model/FocusMode;->$VALUES:[Lcom/helpscout/beacon/model/FocusMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/model/FocusMode;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/model/FocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/model/FocusMode;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/model/FocusMode;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/model/FocusMode;->$VALUES:[Lcom/helpscout/beacon/model/FocusMode;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/model/FocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/model/FocusMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v0, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v13, Lcom/helpscout/beacon/model/FocusMode$toString$1;->INSTANCE:Lcom/helpscout/beacon/model/FocusMode$toString$1;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x1e

    const/4 v15, 0x0

    const-string v8, " "

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
