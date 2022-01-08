.class public Lorg/apache/commons/digester/annotations/utils/AnnotationUtils;
.super Ljava/lang/Object;
.source "AnnotationUtils.java"


# static fields
.field private static final PATTERN:Ljava/lang/String; = "pattern"

.field private static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnnotationPattern(Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 1

    const-string v0, "pattern"

    .line 65
    invoke-static {p0, v0}, Lorg/apache/commons/digester/annotations/utils/AnnotationUtils;->invokeAnnotationMethod(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 67
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAnnotationValue(Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 1

    const-string v0, "value"

    .line 55
    invoke-static {p0, v0}, Lorg/apache/commons/digester/annotations/utils/AnnotationUtils;->invokeAnnotationMethod(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAnnotationsArrayValue(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;
    .locals 2

    .line 80
    invoke-static {p0}, Lorg/apache/commons/digester/annotations/utils/AnnotationUtils;->getAnnotationValue(Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/annotation/Annotation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    check-cast p0, [Ljava/lang/annotation/Annotation;

    check-cast p0, [Ljava/lang/annotation/Annotation;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static invokeAnnotationMethod(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/beanutils/MethodUtils;->invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method
