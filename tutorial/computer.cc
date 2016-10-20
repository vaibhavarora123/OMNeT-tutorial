/*
 * computer.cc
 *
 *  Created on: Oct 20, 2016
 *      Author: Vaibhav Arora
 */
#include<string.h>
#include<omnetpp.h>

using namespace std;

class computer : public omnetpp::cSimpleModule
{
  protected:
    // The following redefined virtual function holds the algorithm.
    virtual void initialize() override;
    virtual void handleMessage(omnetpp::cMessage *msg) override;
};

// The module class needs to be registered with OMNeT++
Define_Module(computer);

void computer::initialize()
{
        if (strcmp("computer1", getName()) == 0) {
        omnetpp::cMessage *msg = new omnetpp::cMessage("networkpKT");
        send(msg, "out");
    }
}

void computer::handleMessage(omnetpp::cMessage *msg)
{
    send(msg, "out"); // send out the message
}
