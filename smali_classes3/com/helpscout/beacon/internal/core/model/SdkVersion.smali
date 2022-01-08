.class public final Lcom/helpscout/beacon/internal/core/model/SdkVersion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/core/model/SdkVersion$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/helpscout/beacon/internal/core/model/SdkVersion;",
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0000H\u0096\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0019\u0010\u000c\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/model/SdkVersion;",
        "",
        "",
        "",
        "split",
        "()[Ljava/lang/String;",
        "other",
        "",
        "compareTo",
        "(Lcom/helpscout/beacon/internal/core/model/SdkVersion;)I",
        "toString",
        "()Ljava/lang/String;",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "inputVersion",
        "<init>",
        "(Ljava/lang/String;)V",
        "Companion",
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
.field public static final Companion:Lcom/helpscout/beacon/internal/core/model/SdkVersion$Companion;

.field private static final DEFAULT:Lcom/helpscout/beacon/internal/core/model/SdkVersion;

.field private static final DEFAULT_VERSION:Ljava/lang/String; = "0.0.0"

.field private static final REGEX:Lkotlin/text/Regex;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/SdkVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/core/model/SdkVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->Companion:Lcom/helpscout/beacon/internal/core/model/SdkVersion$Companion;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[0-9]+(\\.[0-9]+)*"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->REGEX:Lkotlin/text/Regex;

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/SdkVersion;

    const-string v1, "0.0.0"

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/core/model/SdkVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->DEFAULT:Lcom/helpscout/beacon/internal/core/model/SdkVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "inputVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "-"

    invoke-static {p1, v2, v1, v0, v1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "0.0.0"

    :goto_1
    iput-object p1, p0, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->value:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Lcom/helpscout/beacon/internal/core/model/SdkVersion;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->DEFAULT:Lcom/helpscout/beacon/internal/core/model/SdkVersion;

    return-object v0
.end method

.method private final split()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->value:Ljava/lang/String;

    const-string v1, "."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/helpscout/beacon/internal/core/model/SdkVersion;)I
    .locals 6

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->split()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->split()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v1, v0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    array-length v4, v0

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_1

    aget-object v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-ge v4, v5, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    if-le v4, v5, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/SdkVersion;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->compareTo(Lcom/helpscout/beacon/internal/core/model/SdkVersion;)I

    move-result p1

    return p1
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->value:Ljava/lang/String;

    return-object v0
.end method
