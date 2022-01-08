.class public final Lorg/apache/commons/digester/annotations/handlers/MethodHandler;
.super Ljava/lang/Object;
.source "MethodHandler.java"

# interfaces
.implements Lorg/apache/commons/digester/annotations/DigesterLoaderHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/digester/annotations/DigesterLoaderHandler<",
        "Ljava/lang/annotation/Annotation;",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUPPORTED_ARGS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doHandle(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            "R:",
            "Lorg/apache/commons/digester/Rule;",
            ">(TA;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/commons/digester/annotations/DigesterRule;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/commons/digester/annotations/CreationRule;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p5, p4}, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->addRules(Ljava/lang/Class;)V

    .line 118
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p4

    const-class v0, Lorg/apache/commons/digester/annotations/DigesterRule;

    invoke-virtual {p4, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p4

    check-cast p4, Lorg/apache/commons/digester/annotations/DigesterRule;

    .line 119
    invoke-interface {p4}, Lorg/apache/commons/digester/annotations/DigesterRule;->providedBy()Ljava/lang/Class;

    move-result-object p4

    .line 121
    invoke-static {p2}, Lorg/apache/commons/digester/annotations/utils/AnnotationUtils;->getAnnotationPattern(Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2, p4, p1, p3}, Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;->addRuleProvider(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;)V

    goto :goto_1

    .line 125
    :cond_0
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/commons/digester/annotations/DigesterRuleList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-static {p2}, Lorg/apache/commons/digester/annotations/utils/AnnotationUtils;->getAnnotationsArrayValue(Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 130
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v4, p2, v1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 131
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/digester/annotations/handlers/MethodHandler;->doHandle(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private doHandle(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p2, Lorg/apache/commons/digester/annotations/DigesterLoadingException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Impossible to proceed analyzing "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", specified type \'"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is an interface/abstract"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/digester/annotations/DigesterLoadingException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 104
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/digester/annotations/handlers/MethodHandler;->doHandle(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/AnnotatedElement;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V
    .locals 0

    .line 42
    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/digester/annotations/handlers/MethodHandler;->handle(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    return-void
.end method

.method public handle(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V
    .locals 6

    .line 53
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_4

    .line 61
    invoke-static {p1}, Lorg/apache/commons/digester/annotations/utils/AnnotationUtils;->getAnnotationValue(Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 70
    check-cast v0, [Ljava/lang/Class;

    check-cast v0, [Ljava/lang/Class;

    .line 71
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 73
    array-length v3, v0

    if-lez v3, :cond_1

    .line 74
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    invoke-direct {p0, p1, p2, v4, p3}, Lorg/apache/commons/digester/annotations/handlers/MethodHandler;->doHandle(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance p3, Lorg/apache/commons/digester/annotations/DigesterLoadingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible to handle annotation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on method "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has to be a "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/digester/annotations/DigesterLoadingException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 89
    :cond_1
    invoke-direct {p0, p1, p2, v1, p3}, Lorg/apache/commons/digester/annotations/handlers/MethodHandler;->doHandle(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/apache/commons/digester/annotations/FromAnnotationsRuleSet;)V

    :cond_2
    return-void

    .line 65
    :cond_3
    new-instance p2, Lorg/apache/commons/digester/annotations/DigesterLoadingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Impossible to apply this handler, @"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".value() has to be of type \'Class<?>[]\'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/digester/annotations/DigesterLoadingException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 54
    :cond_4
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lorg/apache/commons/digester/annotations/DigesterRule;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/digester/annotations/DigesterRule;

    .line 56
    new-instance p2, Lorg/apache/commons/digester/annotations/DigesterLoadingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Methods annotated with digester annotation rule @"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/commons/digester/annotations/DigesterRule;->reflectsRule()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have just one argument"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/digester/annotations/DigesterLoadingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
