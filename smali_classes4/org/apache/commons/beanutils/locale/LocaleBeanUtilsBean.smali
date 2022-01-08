.class public Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;
.super Lorg/apache/commons/beanutils/BeanUtilsBean;
.source "LocaleBeanUtilsBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;
    }
.end annotation


# static fields
.field private static final LOCALE_BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/beanutils/ContextClassLoaderLocal<",
            "Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$1;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$1;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->LOCALE_BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>()V

    .line 83
    const-class v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    .line 94
    new-instance v0, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>()V

    .line 83
    const-class v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    .line 120
    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;Lorg/apache/commons/beanutils/ConvertUtilsBean;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V
    .locals 0

    .line 109
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>(Lorg/apache/commons/beanutils/ConvertUtilsBean;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V

    .line 83
    const-class p2, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    invoke-static {p2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    .line 110
    iput-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    return-void
.end method

.method public static getLocaleBeanUtilsInstance()Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;
    .locals 1

    .line 68
    sget-object v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->LOCALE_BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;

    return-object v0
.end method

.method public static setInstance(Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;)V
    .locals 1

    .line 79
    sget-object v0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->LOCALE_BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected calculate(Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 919
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getResolver()Lorg/apache/commons/beanutils/expression/Resolver;

    move-result-object v0

    move-object v3, p1

    move-object v4, p2

    .line 920
    :goto_0
    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 922
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p1

    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 923
    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 928
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 929
    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Target bean = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 930
    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Target name = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 934
    :cond_1
    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 935
    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v7

    .line 936
    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 938
    new-instance p1, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean$Descriptor;-><init>(Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1
.end method

.method protected convert(Ljava/lang/Class;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 821
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-gez p2, :cond_1

    .line 822
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    .line 824
    check-cast p3, Ljava/lang/String;

    aput-object p3, p2, v1

    .line 825
    invoke-static {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 827
    :cond_0
    instance-of p2, p3, [Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 828
    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    invoke-static {p3, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 834
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 835
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 836
    check-cast p3, Ljava/lang/String;

    .line 837
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 836
    invoke-static {p3, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 839
    :cond_2
    instance-of p2, p3, [Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 840
    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object p2, p3, v1

    .line 841
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 840
    invoke-static {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 848
    :cond_3
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 849
    check-cast p3, Ljava/lang/String;

    invoke-static {p3, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 851
    :cond_4
    instance-of p2, p3, [Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 852
    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object p2, p3, v1

    invoke-static {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    :cond_5
    :goto_0
    return-object p3
.end method

.method protected convert(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converting value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' to type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 768
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p2, :cond_2

    .line 769
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    .line 771
    check-cast p3, Ljava/lang/String;

    aput-object p3, p2, v1

    .line 772
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p3

    invoke-virtual {p3, p2, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 774
    :cond_1
    instance-of p2, p3, [Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 775
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p2, p3, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 781
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 782
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 783
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    check-cast p3, Ljava/lang/String;

    .line 784
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 783
    invoke-virtual {p2, p3, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 786
    :cond_3
    instance-of p2, p3, [Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 787
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object p3, p3, v1

    .line 788
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 787
    invoke-virtual {p2, p3, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 795
    :cond_4
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 796
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 798
    :cond_5
    instance-of p2, p3, [Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 799
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object p3, p3, v1

    invoke-virtual {p2, p3, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    :cond_6
    :goto_0
    return-object p3
.end method

.method protected definePropertyType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 715
    instance-of v0, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 716
    check-cast p1, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p1

    .line 717
    invoke-interface {p1, p3}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    .line 721
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 727
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    return-object v1

    .line 735
    :cond_2
    instance-of p2, p1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    if-eqz p2, :cond_3

    .line 736
    check-cast p1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    .line 737
    invoke-virtual {p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedPropertyType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 739
    :cond_3
    instance-of p2, p1, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz p2, :cond_4

    .line 740
    check-cast p1, Ljava/beans/IndexedPropertyDescriptor;

    .line 741
    invoke-virtual {p1}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedPropertyType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 744
    :cond_4
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    return-object v1
.end method

.method public getApplyLocalized()Z
    .locals 1

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getApplyLocalized()Z

    move-result v0

    return v0
.end method

.method public getDefaultLocale()Ljava/util/Locale;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    .line 270
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 211
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->localeConvertUtils:Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    return-object v0
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getMappedPropertyLocale(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMappedPropertyLocale(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 441
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 533
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 505
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 588
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 322
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected invokeSetter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    if-ltz p4, :cond_0

    .line 881
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4, p5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 885
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3, p5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 889
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 893
    :goto_1
    new-instance p3, Ljava/lang/reflect/InvocationTargetException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Cannot set "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p3
.end method

.method public setApplyLocalized(Z)V
    .locals 1

    .line 175
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setApplyLocalized(Z)V

    return-void
.end method

.method public setDefaultLocale(Ljava/util/Locale;)V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getLocaleConvertUtils()Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/locale/LocaleConvertUtilsBean;->setDefaultLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 611
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  setProperty("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v1, "<NULL>"

    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 648
    :cond_0
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 649
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 651
    :cond_1
    instance-of v1, p3, [Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 652
    move-object v1, p3

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    const/16 v2, 0x5b

    .line 653
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 654
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    if-lez v2, :cond_2

    const/16 v3, 0x2c

    .line 656
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    :cond_2
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x5d

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 663
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x29

    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    iget-object v1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 671
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getResolver()Lorg/apache/commons/beanutils/expression/Resolver;

    move-result-object v0

    move-object v2, p1

    .line 672
    :goto_2
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 674
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p1

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 675
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    return-void

    .line 680
    :cond_6
    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 681
    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Target bean = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 682
    iget-object p1, p0, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Target name = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 686
    :cond_7
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 687
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v5

    .line 688
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 690
    invoke-virtual {p0, v2, p2, v3}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->definePropertyType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 692
    invoke-virtual {p0, p1, v5, p3, p4}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->convert(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, p0

    .line 693
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/beanutils/locale/LocaleBeanUtilsBean;->invokeSetter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_8
    return-void
.end method
