.class Landroidx/fragment/app/SpecialEffectsController$Operation;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;,
        Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    }
.end annotation


# instance fields
.field private final mCompletionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mIsCanceled:Z

.field private mIsComplete:Z

.field private mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

.field private final mSpecialEffectsSignals:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/core/os/CancellationSignal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .registers 6
    .param p1, "finalState"    # Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .param p2, "lifecycleImpact"    # Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
    .param p3, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p4, "cancellationSignal"    # Landroidx/core/os/CancellationSignal;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mCompletionListeners:Ljava/util/List;

    .line 504
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    .line 507
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsCanceled:Z

    .line 508
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsComplete:Z

    .line 520
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 521
    iput-object p2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 522
    iput-object p3, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 524
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$1;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {p4, v0}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 530
    return-void
.end method


# virtual methods
.method final addCompletionListener(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 642
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mCompletionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    return-void
.end method

.method final cancel()V
    .registers 4

    .line 589
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 590
    return-void

    .line 592
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsCanceled:Z

    .line 593
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 594
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->complete()V

    goto :goto_31

    .line 596
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 597
    .local v0, "signals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/os/CancellationSignal;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/os/CancellationSignal;

    .line 598
    .local v2, "signal":Landroidx/core/os/CancellationSignal;
    invoke-virtual {v2}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 599
    .end local v2    # "signal":Landroidx/core/os/CancellationSignal;
    goto :goto_21

    .line 601
    .end local v0    # "signals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/os/CancellationSignal;>;"
    :cond_31
    :goto_31
    return-void
.end method

.method public complete()V
    .registers 3

    .line 683
    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsComplete:Z

    if-eqz v0, :cond_5

    .line 684
    return-void

    .line 686
    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has called complete."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsComplete:Z

    .line 691
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mCompletionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 692
    .local v1, "listener":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 693
    .end local v1    # "listener":Ljava/lang/Runnable;
    goto :goto_30

    .line 694
    :cond_40
    return-void
.end method

.method public final completeSpecialEffect(Landroidx/core/os/CancellationSignal;)V
    .registers 3
    .param p1, "signal"    # Landroidx/core/os/CancellationSignal;

    .line 668
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 669
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->complete()V

    .line 671
    :cond_13
    return-void
.end method

.method public getFinalState()Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .registers 2

    .line 539
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    return-object v0
.end method

.method public final getFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 558
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method getLifecycleImpact()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
    .registers 2

    .line 549
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    return-object v0
.end method

.method final isCanceled()Z
    .registers 2

    .line 562
    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsCanceled:Z

    return v0
.end method

.method final isComplete()Z
    .registers 2

    .line 674
    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mIsComplete:Z

    return v0
.end method

.method public final markStartedSpecialEffect(Landroidx/core/os/CancellationSignal;)V
    .registers 3
    .param p1, "signal"    # Landroidx/core/os/CancellationSignal;

    .line 656
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    .line 657
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 658
    return-void
.end method

.method final mergeWith(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V
    .registers 9
    .param p1, "finalState"    # Landroidx/fragment/app/SpecialEffectsController$Operation$State;
    .param p2, "lifecycleImpact"    # Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 604
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$3;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact:[I

    invoke-virtual {p2}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, " mFinalState = "

    const-string v2, "SpecialEffectsController: For fragment "

    const-string v3, "FragmentManager"

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_be

    goto/16 :goto_bd

    .line 630
    :pswitch_14
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v0, v5, :cond_bd

    .line 631
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_49
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    goto :goto_bd

    .line 619
    :pswitch_4c
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> REMOVED. mLifecycleImpact  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to REMOVING."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_7d
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 626
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 627
    goto :goto_bd

    .line 606
    :pswitch_86
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v0, v1, :cond_bd

    .line 607
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to ADDING."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_b5
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 615
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 639
    :cond_bd
    :goto_bd
    return-void

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_86
        :pswitch_4c
        :pswitch_14
    .end packed-switch
.end method

.method onStart()V
    .registers 1

    .line 648
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v2, "} "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v3, "mFinalState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v3, "mLifecycleImpact = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object v3, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mLifecycleImpact:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v1, "mFragment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 584
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
