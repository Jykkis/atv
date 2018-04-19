//#line 2 "/opt/ros/jade/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
// 
// File autogenerated for the voronoi_planner package 
// by the dynamic_reconfigure package.
// Please do not edit.
// 
// ********************************************************/

#ifndef __voronoi_planner__VORONOIPLANNERCONFIG_H__
#define __voronoi_planner__VORONOIPLANNERCONFIG_H__

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace voronoi_planner
{
  class VoronoiPlannerConfigStatics;
  
  class VoronoiPlannerConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l, 
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }
      
      virtual void clamp(VoronoiPlannerConfig &config, const VoronoiPlannerConfig &max, const VoronoiPlannerConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const VoronoiPlannerConfig &config1, const VoronoiPlannerConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, VoronoiPlannerConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const VoronoiPlannerConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, VoronoiPlannerConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const VoronoiPlannerConfig &config) const = 0;
      virtual void getValue(const VoronoiPlannerConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;
    
    template <class T>
    class ParamDescription : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string name, std::string type, uint32_t level, 
          std::string description, std::string edit_method, T VoronoiPlannerConfig::* f) :
        AbstractParamDescription(name, type, level, description, edit_method),
        field(f)
      {}

      T (VoronoiPlannerConfig::* field);

      virtual void clamp(VoronoiPlannerConfig &config, const VoronoiPlannerConfig &max, const VoronoiPlannerConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;
        
        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const VoronoiPlannerConfig &config1, const VoronoiPlannerConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, VoronoiPlannerConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const VoronoiPlannerConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, VoronoiPlannerConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const VoronoiPlannerConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const VoronoiPlannerConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, VoronoiPlannerConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    template<class T, class PT>
    class GroupDescription : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string name, std::string type, int parent, int id, bool s, T PT::* f) : AbstractGroupDescription(name, type, parent, id, s), field(f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, VoronoiPlannerConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T (PT::* field);
      std::vector<VoronoiPlannerConfig::AbstractGroupDescriptionConstPtr> groups;
    };
    
class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(VoronoiPlannerConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("weight_data"==(*_i)->name){weight_data = boost::any_cast<double>(val);}
        if("weight_smooth"==(*_i)->name){weight_smooth = boost::any_cast<double>(val);}
        if("publish_voronoi_grid"==(*_i)->name){publish_voronoi_grid = boost::any_cast<bool>(val);}
        if("smooth_path"==(*_i)->name){smooth_path = boost::any_cast<bool>(val);}
      }
    }

    double weight_data;
double weight_smooth;
bool publish_voronoi_grid;
bool smooth_path;

    bool state;
    std::string name;

    
}groups;



//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double weight_data;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double weight_smooth;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool publish_voronoi_grid;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool smooth_path;
//#line 218 "/opt/ros/jade/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("VoronoiPlannerConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }
    
    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }
    
    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const VoronoiPlannerConfig &__max__ = __getMax__();
      const VoronoiPlannerConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const VoronoiPlannerConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }
    
    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const VoronoiPlannerConfig &__getDefault__();
    static const VoronoiPlannerConfig &__getMax__();
    static const VoronoiPlannerConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();
    
  private:
    static const VoronoiPlannerConfigStatics *__get_statics__();
  };
  
  template <> // Max and min are ignored for strings.
  inline void VoronoiPlannerConfig::ParamDescription<std::string>::clamp(VoronoiPlannerConfig &config, const VoronoiPlannerConfig &max, const VoronoiPlannerConfig &min) const
  {
    return;
  }

  class VoronoiPlannerConfigStatics
  {
    friend class VoronoiPlannerConfig;
    
    VoronoiPlannerConfigStatics()
    {
VoronoiPlannerConfig::GroupDescription<VoronoiPlannerConfig::DEFAULT, VoronoiPlannerConfig> Default("Default", "", 0, 0, true, &VoronoiPlannerConfig::groups);
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.weight_data = 0.1;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.weight_data = 1.0;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.weight_data = 0.5;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(VoronoiPlannerConfig::AbstractParamDescriptionConstPtr(new VoronoiPlannerConfig::ParamDescription<double>("weight_data", "double", 0, "Weight of data when smoothing path", "", &VoronoiPlannerConfig::weight_data)));
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(VoronoiPlannerConfig::AbstractParamDescriptionConstPtr(new VoronoiPlannerConfig::ParamDescription<double>("weight_data", "double", 0, "Weight of data when smoothing path", "", &VoronoiPlannerConfig::weight_data)));
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.weight_smooth = 0.1;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.weight_smooth = 1.0;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.weight_smooth = 0.3;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(VoronoiPlannerConfig::AbstractParamDescriptionConstPtr(new VoronoiPlannerConfig::ParamDescription<double>("weight_smooth", "double", 0, "Weight of smoothing when smoothing path", "", &VoronoiPlannerConfig::weight_smooth)));
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(VoronoiPlannerConfig::AbstractParamDescriptionConstPtr(new VoronoiPlannerConfig::ParamDescription<double>("weight_smooth", "double", 0, "Weight of smoothing when smoothing path", "", &VoronoiPlannerConfig::weight_smooth)));
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.publish_voronoi_grid = 0;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.publish_voronoi_grid = 1;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.publish_voronoi_grid = 1;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(VoronoiPlannerConfig::AbstractParamDescriptionConstPtr(new VoronoiPlannerConfig::ParamDescription<bool>("publish_voronoi_grid", "bool", 0, "Publish Voronoi Grid", "", &VoronoiPlannerConfig::publish_voronoi_grid)));
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(VoronoiPlannerConfig::AbstractParamDescriptionConstPtr(new VoronoiPlannerConfig::ParamDescription<bool>("publish_voronoi_grid", "bool", 0, "Publish Voronoi Grid", "", &VoronoiPlannerConfig::publish_voronoi_grid)));
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.smooth_path = 0;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.smooth_path = 1;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.smooth_path = 1;
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(VoronoiPlannerConfig::AbstractParamDescriptionConstPtr(new VoronoiPlannerConfig::ParamDescription<bool>("smooth_path", "bool", 0, "Smooth path", "", &VoronoiPlannerConfig::smooth_path)));
//#line 280 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(VoronoiPlannerConfig::AbstractParamDescriptionConstPtr(new VoronoiPlannerConfig::ParamDescription<bool>("smooth_path", "bool", 0, "Smooth path", "", &VoronoiPlannerConfig::smooth_path)));
//#line 235 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 235 "/opt/ros/jade/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(VoronoiPlannerConfig::AbstractGroupDescriptionConstPtr(new VoronoiPlannerConfig::GroupDescription<VoronoiPlannerConfig::DEFAULT, VoronoiPlannerConfig>(Default)));
//#line 353 "/opt/ros/jade/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<VoronoiPlannerConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__); 
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__); 
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__); 
    }
    std::vector<VoronoiPlannerConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<VoronoiPlannerConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    VoronoiPlannerConfig __max__;
    VoronoiPlannerConfig __min__;
    VoronoiPlannerConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const VoronoiPlannerConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static VoronoiPlannerConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &VoronoiPlannerConfig::__getDescriptionMessage__() 
  {
    return __get_statics__()->__description_message__;
  }

  inline const VoronoiPlannerConfig &VoronoiPlannerConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }
  
  inline const VoronoiPlannerConfig &VoronoiPlannerConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }
  
  inline const VoronoiPlannerConfig &VoronoiPlannerConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }
  
  inline const std::vector<VoronoiPlannerConfig::AbstractParamDescriptionConstPtr> &VoronoiPlannerConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<VoronoiPlannerConfig::AbstractGroupDescriptionConstPtr> &VoronoiPlannerConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const VoronoiPlannerConfigStatics *VoronoiPlannerConfig::__get_statics__()
  {
    const static VoronoiPlannerConfigStatics *statics;
  
    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = VoronoiPlannerConfigStatics::get_instance();
    
    return statics;
  }


}

#endif // __VORONOIPLANNERRECONFIGURATOR_H__
