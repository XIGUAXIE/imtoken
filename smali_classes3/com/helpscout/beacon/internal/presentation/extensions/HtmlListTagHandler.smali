.class public final Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;,
        Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ul;,
        Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ol;,
        Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u00172\u00020\u0001:\u0004\u0017\u0018\u0019\u001aB\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;",
        "Landroid/text/Html$TagHandler;",
        "",
        "tag",
        "",
        "isListTag",
        "(Ljava/lang/String;)Z",
        "isOrderedListTag",
        "isUnorderedListTag",
        "opening",
        "Landroid/text/Editable;",
        "output",
        "Lorg/xml/sax/XMLReader;",
        "xmlReader",
        "",
        "handleTag",
        "(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V",
        "Ljava/util/Stack;",
        "Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;",
        "lists",
        "Ljava/util/Stack;",
        "<init>",
        "()V",
        "Companion",
        "ListTag",
        "Ol",
        "Ul",
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
.field private static final BULLET_SPAN:Landroid/text/style/BulletSpan;

.field private static final CUSTOM_HS_LI_TAG:Ljava/lang/String; = "custom_hs_li"

.field private static final CUSTOM_HS_OL_TAG:Ljava/lang/String; = "custom_hs_ol"

.field private static final CUSTOM_HS_UL_TAG:Ljava/lang/String; = "custom_hs_ul"

.field public static final Companion:Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Companion;

.field private static final INDENT_PX:I = 0xa

.field private static final LIST_ITEM_INDENT_PX:I = 0x14

.field private static final LI_TAG:Ljava/lang/String; = "li"

.field private static final OL_TAG:Ljava/lang/String; = "ol"

.field private static final UL_TAG:Ljava/lang/String; = "ul"


# instance fields
.field private final lists:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->Companion:Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Companion;

    new-instance v0, Landroid/text/style/BulletSpan;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->BULLET_SPAN:Landroid/text/style/BulletSpan;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->lists:Ljava/util/Stack;

    return-void
.end method

.method public static final synthetic access$getBULLET_SPAN$cp()Landroid/text/style/BulletSpan;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->BULLET_SPAN:Landroid/text/style/BulletSpan;

    return-object v0
.end method

.method private final isListTag(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "li"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "custom_hs_li"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final isOrderedListTag(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "ol"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "custom_hs_ol"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final isUnorderedListTag(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "ul"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "custom_hs_ul"

    invoke-static {v1, p1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xmlReader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->isUnorderedListTag(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->lists:Ljava/util/Stack;

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ul;

    invoke-direct {p2}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ul;-><init>()V

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->isOrderedListTag(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->lists:Ljava/util/Stack;

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ol;

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/4 v0, 0x0

    invoke-direct {p2, p3, p4, v0}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$Ol;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->isListTag(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;

    invoke-virtual {p1, p3}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;->openItem(Landroid/text/Editable;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler;->lists:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lcom/helpscout/beacon/internal/presentation/extensions/HtmlListTagHandler$ListTag;->closeItem(Landroid/text/Editable;I)V

    :cond_4
    :goto_1
    return-void
.end method
