.class public final Lcn/jiguang/analytics/android/e/d/h;
.super Lcn/jiguang/analytics/android/e/d/d;


# static fields
.field private static a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[+|(|0-9][0-9|\\-|(|)| ]{1,19}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jiguang/analytics/android/e/d/h;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "is NOT a phone number"

    invoke-direct {p0, v0}, Lcn/jiguang/analytics/android/e/d/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/Serializable;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/analytics/android/e/d/h;->a:Ljava/util/regex/Pattern;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
